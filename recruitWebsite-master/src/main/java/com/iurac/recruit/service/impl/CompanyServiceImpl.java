package com.iurac.recruit.service.impl;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.iurac.recruit.entity.*;
import com.iurac.recruit.exception.ManageException;
import com.iurac.recruit.exception.ServiceException;
import com.iurac.recruit.mapper.*;
import com.iurac.recruit.service.CompanyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.iurac.recruit.vo.EchartsVo;
import com.iurac.recruit.vo.PageResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author iurac
 * @since 2021-06-03
 */
@Service("companyService")
public class CompanyServiceImpl extends ServiceImpl<CompanyMapper, Company> implements CompanyService {

    @Autowired
    private CompanyMapper companyMapper;
    @Autowired
    private JobMapper jobMapper;
    @Autowired
    private UserRoleMapper userRoleMapper;
    @Autowired
    private HrMapper hrMapper;
    @Autowired
    private RoleMapper roleMapper;

    @Override
    @Transactional(rollbackFor = ServiceException.class)
    public void join(String id, Company company) throws ServiceException {
        QueryWrapper<Company> companyQueryWrapper = new QueryWrapper<>();
        companyQueryWrapper.eq("name",company.getName());
        if (ObjectUtil.isNotNull(companyMapper.selectOne(companyQueryWrapper))){
            throw new ServiceException("The company has been registered. Please confirm the company name and try again or contact the administrator");
        }
        if(companyMapper.insert(company)!=1){
            throw new ServiceException("An error occurred while adding the company");
        }

        UserRole userRole = new UserRole();
        userRole.setId(IdUtil.simpleUUID());
        userRole.setUserId(id);
        QueryWrapper<Role> roleQueryWrapper = new QueryWrapper<>();
        roleQueryWrapper.eq("role","manager");
        userRole.setRoleId(roleMapper.selectOne(roleQueryWrapper).getId());
        if(userRoleMapper.insert(userRole)!=1){
            throw new ServiceException("An error occurred while authorizing the user");
        }

        Hr hr = new Hr();
        hr.setId(IdUtil.simpleUUID());
        hr.setUserId(id);
        hr.setCompanyId(company.getId());
        hr.setPosition("General manager");
        if(hrMapper.insert(hr)!=1){
            throw new ServiceException("An error occurred while entering HR information");
        }
    }

    @Override
    public EchartsVo getNumOfCompanyInListedStatus() {
        EchartsVo echartsVo = new EchartsVo();
        List<Map<String ,Object>> list = companyMapper.getNumOfCompanyInListedStatus();;
        int total = companyMapper.selectCount(Wrappers.emptyWrapper());
        echartsVo.setDataList(list);
        echartsVo.setTotal(total);
        return echartsVo;
    }

    @Override
    public EchartsVo getNumOfCompanyInSize() {
        EchartsVo echartsVo = new EchartsVo();
        List<Map<String ,Object>> list = companyMapper.getNumOfCompanyInSize();;
        int total = companyMapper.selectCount(Wrappers.emptyWrapper());
        echartsVo.setDataList(list);
        echartsVo.setTotal(total);
        return echartsVo;
    }

    @Override
    public PageResultVo<Company> getByCondition(Long page, Long limit, String name, String listedStatus, String size, String startDate, String endDate) {
        PageResultVo<Company> pageResultVo = new PageResultVo<>();
        pageResultVo.setRecords(companyMapper.getByCondition((page-1)*limit,limit,name,listedStatus,size,startDate,endDate));
        pageResultVo.setTotal(companyMapper.getCountByCondition(name,listedStatus,size,startDate,endDate));
        return pageResultVo;
    }

    @Override
    @Transactional(rollbackFor = ManageException.class)
    public void deleteCompany(String id) throws ManageException {
        if(companyMapper.deleteById(id)!=1){
            throw new ManageException("An error occurred while deleting company information");
        }

        QueryWrapper<Hr> hrQueryWrapper = new QueryWrapper<>();
        hrQueryWrapper.eq("company_id",id);
        List<Hr> hrList = hrMapper.selectList(hrQueryWrapper);
        List<String> ids = new ArrayList<>();
        for (Hr hr : hrList) {
            ids.add(hr.getUserId());
        }
        QueryWrapper<Role> roleQueryWrapper = new QueryWrapper<>();
        roleQueryWrapper.eq("role","user");
        Role role = roleMapper.selectOne(roleQueryWrapper);
        QueryWrapper<UserRole> userRoleQueryWrapper = new QueryWrapper<>();
        userRoleQueryWrapper.ne("role_id",role.getId()).in("user_id",ids);
        if(userRoleMapper.selectCount(userRoleQueryWrapper)!=userRoleMapper.delete(userRoleQueryWrapper)){
            throw new ManageException("An error occurred while deleting company employee permissionsAn error occurred while deleting company employee permissions");
        }
        if(hrMapper.selectCount(hrQueryWrapper)!=hrMapper.delete(hrQueryWrapper)){
            throw new ManageException("An error occurred while deleting company employee information");
        }

        QueryWrapper<Job> jobQueryWrapper = new QueryWrapper<>();
        jobQueryWrapper.eq("company_id",id);
        if(jobMapper.selectCount(jobQueryWrapper)!=jobMapper.delete(jobQueryWrapper)){
            throw new ManageException("An error occurred while deleting the company position");
        }
    }
}

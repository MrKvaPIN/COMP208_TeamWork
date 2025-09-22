import requests

API_URL = "http://127.0.0.1:5003/process"
position = """'Job Responsibilities:
1. Participate in the full process of product testing, including requirement analysis, design review, test plan formulation, test case design and execution, defect tracking, and software quality analysis.
2. Execute project testing, including test plan formulation, test resource allocation, test environment setup, integration testing, regression testing, etc.
3. Ensure the quality of the system under test and strive to improve the quality and efficiency of development through innovation in testing processes and methods.

Job Requirements:
1. Bachelor''s degree or above in Computer Science, Software Engineering, or a related field.
2. More than 3 years of testing experience in the internet industry.
3. Familiar with software testing processes, proficient in software testing theories and methods, and able to use popular testing tools proficiently.
4. Skilled in database tools and API testing tools.
5. Familiar with performance testing and automated testing.
6. Knowledge of at least one development language among Java, C++, and Python, and familiarity with the Linux operating system.
7. Strong business understanding, good communication skills; responsible and detail-oriented, with a quick learning and exploration ability.'"""

resumes = """**INFORMATION TECHNOLOGY TECHNICIAN I**

**Summary**  
Versatile Systems Administrator with strong troubleshooting skills in networking, end user support, and network security. Experienced in server management and IT infrastructure.

**Highlights**  
- Active Directory  
- Microsoft Exchange  
- Office 365 and Azure  
- VMWare  
- Disaster recovery  

**Experience**  
**Information Technology Technician I**  
Aug 2007 - Present  
- Managed user accounts in Office 365 and Exchange Online.  
- Created and managed virtual machines in Azure.  
- Supported Linux machines and wireless network projects.  
- Developed specifications for Office 365 migration and Enterprise backup systems.  
- Administered Active Directory and Group Policy Objects.  
- Managed backup infrastructure and storage systems.  

**Information Services Liaison**  
Aug 2005 - Aug 2007  
- Troubleshot hardware/software issues and network connectivity.  
- Administered user accounts and permissions in Active Directory.  
- Supported Microsoft SharePoint Server and network security.  

**Education**  
Bachelor of Science, Information Technology  
Florida International University, 2005  

**Certifications**  
CompTIA Network+ - 2014  

**Skills**  
Active Directory, Azure, Backup Exec, Linux, Microsoft Exchange, VMWare, PowerShell, troubleshooting.<resume>**INFORMATION TECHNOLOGY MANAGER**

**Professional Summary:**  
Experienced IT Manager with a Master's degree and multiple certifications. Skilled in managing systems, infrastructure, and teams to meet deadlines in fast-paced environments. Expertise in network engineering, helpdesk administration, project management, and process improvement.

**Experience:**

**Information Technology Manager**  
Company Name, City, State  
04/2013 - Present  
- Manage application database and hardware systems for bankruptcy cases.  
- Maintain LAN/WAN infrastructure and perform disaster recovery planning.  
- Standardize hardware and software, improve network performance, and automate processes.  

**Network Analyst**  
Company Name, City, State  
08/1987 - 06/2012  
- Led network improvements resulting in significant performance boosts.  
- Supported a large user base and managed IT design and implementation.  
- Trained and mentored staff while reducing support requests and costs.  

**Education:**  
- Master of Science in Leadership, Walden University, 2015  
- Master of Science in Information Systems Management, Walden University, 2013  
- Bachelor of Science in Information Systems Management, Walden University  

**Certifications:**  
- MCP, CompTIA Network+, CompTIA A+  

**Skills:**  
Network management, disaster recovery, project management, hardware/software support, team training, vendor relations.<resume>**WORKING RF SYSTEMS ENGINEER**

**Qualifications**
- Proficient in Microsoft Office, RF/Microwave software (Ansoft Designer, AWR Microwave Office), and circuit design software (SPICE, NI Multisim).
- Experienced with RF test instruments (Spectrum Analyzer, Vector Network Analyzer) and programming languages (C/C++, Python, Java, Matlab, LabView).
- PCB design software: Eagle, PCB Artist.

**Experience**
- **RF Systems Engineer** (May 2014 - Present)
  - Developed hardware DFM procedures and managed multiple projects.
  - Led end-to-end technical project design and testing for satellite communication systems.
  - Conducted EVT, DVT, PVT validations and quality measurements.
  
- **System Data Analyst** (Aug 2011 - Dec 2013)
  - Extracted and maintained data accuracy from SQL database.
  - Developed data collection strategies and performed data analysis using SQL, Excel, SAS, and SPSS.

- **Electrical/Validation Engineer** (May 2011 - Aug 2011)
  - Developed data requirements for PCBA assembly and automated testing procedures.
  - Conducted reliability testing and troubleshooting for products.

**Education**
- M.S. in Electrical and Computer Engineering, Purdue University, Dec. 2013, GPA: 3.9
- B.S. in Electrical and Computer Engineering, Purdue University, Dec. 2011, GPA: 3.2

**Skills**
- Big data, Circuit design, Data analysis, Documentation, Project design, Quality assurance, Troubleshooting.<resume>**INFORMATION TECHNOLOGY MANAGER**

**Summary**  
IT Manager with expertise in risk analysis, cost-effective solutions, and performance improvement.

**Highlights**  
- Operations management  
- Project tracking  
- Waterfall and Scrum methodologies  
- Staff development  
- Client communication  

**Experience**  
**Information Technology Manager**  
03/2013 - Present  
- Managed IT team and resources  
- Drove business KPIs  
- Collaborated on IT support cases  
- Defined project deliverables  

**IT Administrator**  
06/2011 - 03/2013  
- Designed infrastructure for performance and security  
- Managed data center and disaster recovery  
- Deployed VMware architecture  

**Network Administrator**  
02/2010 - 05/2011  
- Deployed Windows 7 and Microsoft Exchange 2010  
- Administered SQL database  

**IT Consultant**  
10/2008 - 05/2011  
- Provided security support for multiple clients  
- Managed endpoint security solutions  

**Education**  
Master of Science: Business Information Technology, 2018, DePaul University  
Bachelor of Science: Network and Communications Management, 2009, DeVry University  

**Skills**  
Active Directory, SQL, Microsoft Exchange, VMware, disaster recovery, technical support.<resume>**IT Management Resume**

**Career Overview**  
Detail-oriented IT professional with extensive experience in hardware/software troubleshooting, networking, task automation, and server technologies.

**Qualifications**  
- CompTIA A+ Certified  
- CompTIA Net+ Certification Class  
- MCSA Certification Class  
- Web Development I & II  
- Java Programming Class  

**Operating Systems**  
- Windows (95 - 8, Server 2003 - 8)  
- Multiple Linux Distributions  
- Mac OS X (v10.0 - v10.8)  
- Android (1.0 - 4.0.4)  
- iOS (1.0 - 6.1)  

**Skills**  
- Troubleshooting  
- Networking  
- Programming (HTML, CSS, Java, PHP, JavaScript)  
- Adobe Creative Suite  
- Microsoft Office  
- Information Security  

**Accomplishments**  
- Rebuilt a website, increasing monthly hits from 3,422 to 40,884.  
- Designed and installed a complete IT system upgrade for a client.  
- Automated office tasks using Batch Scripting.  
- Programmed a cloud storage website for client access.  

**Work Experience**  
- IT Management (Mar 2012 - Nov 2012)  
- IT Consultant (Jul 2011 - Feb 2012)  

**Education**  
- Associate of Science in Information Technology, 2014  
- High School Diploma with coursework in computer science. """

# "Please output the highly simplified resume. Do not output anything else."
input = {"position": f"{position}",
         "resumes": f"{resumes}"
         # change to simplified_resume if you try the AI chatbot.
         # "resume": f"{simplified_resume}"
            }
response = requests.post(API_URL, json=input)

if response.status_code == 200:
    result = response.json()
    print(result)
else:
    print(f"Error: {response.json()}")
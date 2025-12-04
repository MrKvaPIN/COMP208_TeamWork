# AIHire Recruitment Platform （COMP208_TeamWork）

A full-stack recruitment platform built with Spring Boot and Thymeleaf, featuring role-based access control, real-time chat, resume upload and AI-powered resume simplification/matching. The project also includes Python microservices that integrate with OpenAI for resume processing and chatbot features.

## Features

- Role-based authentication and authorization via Apache Shiro and Redis caching
- Job browsing, filtering, detailed job pages, and application workflow
- Resume upload (PDF), text extraction, and AI-powered simplification
- AI chatbot for resume-based Q&A and resume–job matching
- Real-time chat using WebSocket (candidate ↔ HR)
- CAPTCHA verification (Kaptcha) with configurable settings
- Admin and HR management dashboards
- MyBatis-Plus powered data access with pagination
- Server-side HTML rendering with Thymeleaf

## Tech Stack

- Backend: Spring Boot 2.5, Apache Shiro, MyBatis-Plus, Redis (Jedis), Thymeleaf, Hutool, Kaptcha
- Database: MySQL
- Frontend: Thymeleaf templates
- Real-time: Java WebSocket
- AI Services: Python (Flask, Flask-CORS, scikit-learn), OpenAI API
- Build: Maven

## Architecture

- Spring Boot serves HTML via Thymeleaf and provides REST endpoints for jobs, users, resumes, and chat.
- Shiro manages login, session, and role-based access, with Redis-backed caches for authentication/authorization.
- WebSocket (`/message`) enables real-time messaging between logged-in users, storing chat state and messages.
- Resume upload extracts text from PDFs, forwards it to the AI microservice for simplification, and persists results.
- AI microservices run independently and are called over HTTP by the backend.

## Key Components

- Entry point: `recruitWebsite-master/src/main/java/com/iurac/recruit/RecruitWebsiteApplication.java`
- Security: Shiro configured in `config/ShiroConfig.java`, custom realm in `security/CustomerRealm.java`, Redis cache in `security/RedisCacheManager.java`
- WebSocket: Endpoint at `/message`, configured in `config/WebsocketConfig.java`
- Resume processing: `controller/ResumeUploadController.java`
- Job features: `controller/JobController.java`
- User features: `controller/UserController.java`
- CAPTCHA: `controller/KaptchaController.java`

## Prerequisites

- Java 8+
- Maven 3.6+
- MySQL 8+ (or compatible)
- Redis 5+
- Python 3.9+
- Python packages: `openai`, `flask`, `flask-cors`, `scikit-learn`

Install Python dependencies:

## Configuration

Update `recruitWebsite-master/src/main/resources/application.yaml`:

- Database
  - `spring.datasource.url`: set DB host, name, and options
  - `spring.datasource.username` / `password`
- Redis
  - `spring.redis.host`: default `127.0.0.1`
  - `spring.redis.port`: default `6379`
- Thymeleaf and Kaptcha are preconfigured

## Database Setup

1. Create a database (matching `application.yaml`).
2. Import `Mysql/recruitment.sql`:
   - Using CLI:
     ```
     mysql -u <user> -p <your_db> < Mysql/recruitment.sql
     ```
   - Or import via a GUI tool (e.g., MySQL Workbench).

## AI Services Setup

Set your OpenAI API key in each Python microservice file:
- `AI Implementation/simplify_resume_launch.py`: `api_key="<YOUR_OPENAI_API_KEY>"`
- `AI Implementation/chatbot_launch.py`: `api_key="<YOUR_OPENAI_API_KEY>"`
- `AI Implementation/recommend_resume_launch.py`: `api_key="<YOUR_OPENAI_API_KEY>"`

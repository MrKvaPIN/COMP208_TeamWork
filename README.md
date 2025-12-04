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





# Build & Run (Backend)

From `recruitWebsite-master/`:

- Default server port: `8080`
- Access the app: `http://localhost:8080`

## Usage

- Visit `http://localhost:8080`
- Register a user or log in (`/login`)
- CAPTCHA test codes: you can bypass validation using `000` or `222` during development
- Browse jobs and view details
- Upload a PDF resume on the personal page; the system will:
  - Save the file
  - Extract text
  - Send the text to `POST http://127.0.0.1:5001/process1` for AI simplification
  - Store the simplified text for later use
- Apply to jobs; duplicate applications are prevented
- Use in-app messaging; WebSocket endpoint is `/message`

## Selected API Endpoints

- Jobs
  - `GET /job/detail/{id}`: job detail page
  - `GET /job/getJobsByConditionInPage`: paginated filtered jobs
- Resume
  - `POST /resume/upload`: upload a PDF resume, parse, and AI-process it
  - `GET /resume/getParsedResume`: get simplified resume text
  - `GET /resume/getParsedResumeAndSave?jobId=<id>`: save application with parsed resume
- User
  - `POST /login`: login with CAPTCHA
  - `POST /register`: create account
  - `GET /user/getCurrentUserId`: fetch current logged-in user ID
- CAPTCHA
  - `GET /kaptcha/render`: render CAPTCHA image
  - `POST /kaptcha/valid`: validate code

## Notes

- Authentication is enforced for most routes; roles include `admin`, `manager`, `hr`, and regular users.
- Passwords are salted and hashed with MD5 and 1024 iterations.
- Redis caches Shiro authentication/authorization for performance.
- WebSocket sessions are bound to authenticated users, enabling direct messaging and online status tracking.

## Troubleshooting

- Database connection errors
  - Verify `spring.datasource.url`, `username`, `password`, and DB exists
  - Ensure MySQL is running and reachable
- Redis errors
  - Check Redis server is running at `127.0.0.1:6379`
- AI failures
  - Ensure Python services are running on ports `5001`, `5002`, `5003`
  - Confirm OpenAI API key is set and valid
- CAPTCHA issues
  - During dev, use `000` or `222` to bypass CAPTCHA as configured

## License

This project is for academic coursework and demonstration purposes. Add an appropriate license if you intend to distribute or use it commercially.

## Acknowledgements

- Spring Boot, Apache Shiro, MyBatis-Plus, Thymeleaf
- Redis, Kaptcha, Hutool
- OpenAI API and Python ecosystem for AI features

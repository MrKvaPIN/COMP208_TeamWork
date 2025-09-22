import requests

# simplify_resume_launch test
API_URL = "http://127.0.0.1:5001/process"
question = "Please output the highly simplified resume. Do not output anything else."
# chatbot_launch test
# API_URL = "http://127.0.0.1:5002/process"
# question = "Could you recommend some job positions for me?"

resume = """Tianyuan Tan
Liverpool (UK) 07436591797 | Tel: (+ 86) 15857130546 | Email:sgttan3@liverpool.ac.uk
Educational Background:
2022.09-2024.06 University Information and Computing Science (Undergraduate GPA: 3.86 / 4 Y2) Suzhou
Related courses: Calculus (89 / 100), Linear Algebra (83 / 100), Computer system(89/100), Database(71/100), Java Programming(77/100),
Operating system(79/100), Data structure(75/100), Algorithm(79/100), Artificial intelligence (84 / 100)
2024.09-2026.06 University of Liverpool Computer Science (GPA: pending / 4.0), Liverpool
Related courses: Database Development, Software Engineering, Advanced artificial Intelligence, Data Science
Project Experience:
2024.10 - Reading Group Participant on Large Language Models (LLMs) – Liverpool
 Participated in a reading group led by Professor Tulika, focusing on recent advancements in Large Language Models (LLMs).
 Engaged in discussions and literature reviews on topics such as model architectures, training techniques, and multimodal learning.
 Gained insights into the challenges and applications of LLMs in NLP, vision-language tasks, and multimodal reasoning.
2024.3-9 AI Text To Audio Generation Researcher Suzhou
 Participated in study AudioLDM, a text-to-audio (TTA) generation system based on latent variable diffusion model (LDMs), studied the
impact of different model variants (AudioLDM-S / L / Full) on generation quality.
 Compared with DiffSound and AudioGen, AudioLDM achieved the best results in Frechet Distance (FD), Inception Score (IS), KL
Divergence and other indicators.
2024.5-6 Traditional Machine Learning Model Building And Performance Analysis Programmer Suzhou
 Traditional machine learning models (PCA, decision tree, SVM, Naive Bayes, GMM, K-means, hierarchical clustering) are studied and
implemented to optimize the classification task of predicting students majors.
 The influence of principal components on the classification is analyzed by PCA dimension reduction, the most differentiated features are
extracted, and compare the performance of different classification models (decision tree, SVM, Naive Bayes) in accuracy and
generalization ability.
 Unsupervised clustering (GMM, K-means, hierarchical clustering) was further explored to identify the data distribution patterns, and the
characteristics of different clustering methods were visually analyzed combined with PCA dimension reduction.
 Comprehensively compare the advantages and disadvantages of each model to provide optimization strategies for the classification and
pattern identification of complex data.
2023.10 Java Sankey Diagram Visualization Project Development Programmer Suzhou
 An interactive visualization interface was designed and implemented using Java to show different categories of budgets and their
quantitative relationships based on the Sanki diagram (Sankey Diagram).
 Scale the window automatically, size the chart synchronously, and reflect the data size by color to distinguish the category and line
thickness.
 Users can upload data and generate visual results with one click, and support the return and re-upload of data for dynamic update, so as to
improve the intuitive and interactive experience of data visualization.
Award:
2022.11: runner-up in the Grade 22 Freshmen Cup of Xi-an Jiaotong-Liverpool University 2023.09: Top 20% of information and Computing
Science majors of Xi-an Jiaotong-Liverpool University
2024.09: Top 20% of information and computing science majors at Xian Jiaotong-Liverpool University
Other qualifications:
English ability: have excellent English application ability, fluent oral English, can be used as a working language
Computer: proficient in using Office common office software (able to use Excel for data statistics and correlation analysis), familiar with four
programming languages java, python, c, c++"""

simplified_resume = """**Tianyuan Tan**  
Liverpool (UK)  
07436591797 | (+86) 15857130546 | sgttan3@liverpool.ac.uk  

**Education**  
- **2022.09 - 2024.06**: University Information and Computing Science, Suzhou (GPA: 3.86/4)  
- **2024.09 - 2026.06**: Computer Science, University of Liverpool (GPA: pending)

**Project Experience**  
- **2024.10**: Reading Group on Large Language Models, Liverpool  
- **2024.03 - 09**: AI Text To Audio Generation Researcher, Suzhou  
- **2024.05 - 06**: Traditional Machine Learning Model Building, Suzhou  
- **2023.10**: Java Sankey Diagram Visualization Project, Suzhou  

**Awards**  
- **2022.11**: Runner-up, Freshmen Cup, Xi'an Jiaotong-Liverpool University  
- **2023.09**: Top 20% of Information and Computing Science Majors  
- **2024.09**: Top 20% of Information and Computing Science Majors  

**Skills**  
- **Languages**: Fluent in English  
- **Programming**: Java, Python, C, C++  
- **Software**: Proficient in Office, Excel for data analysis"""

# "Please output the highly simplified resume. Do not output anything else."
input = {"question": f"{question}",
         "resume": f"{resume}"
         # change to simplified_resume if you try the AI chatbot.
         # "resume": f"{simplified_resume}"
            }
response = requests.post(API_URL, json=input)

if response.status_code == 200:
    result = response.json()
    print(result)
else:
    print(f"Error: {response.json()}")
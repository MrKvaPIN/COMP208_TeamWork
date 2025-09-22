from openai import OpenAI
from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

def openai_generation(question,resume):
    client = OpenAI(
        # Please copy the api key from instruction and paste here
        api_key= ""
    )
    completion = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system",
             "content": f"You are an expert in recruitment. You will only answer questions within this topic. The user has offered you their resume: {resume}. When you answer the question, you need to act like you already know the resume, and consider the resume carefully."},
            {"role": "user", "content": question}
        ],
        temperature=0.5,
        max_tokens=512,
        top_p=1
    )
    result = completion.choices[0].message.content
    return result


@app.route('/process2', methods=['POST'])
def process_request():
    data = request.get_json(force=True)
    question = data.get("question")
    resume = data.get("resume")
    if not question:
        return jsonify({"error": "Missing 'question' field"}), 400

    if not resume:
        return jsonify({"error": "Missing 'resume' field"}), 400

    try:
        response = openai_generation(question,resume)
        return jsonify(response)
    except Exception as e:
        return jsonify({"error": str(e)}), 500


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002, debug=True)

from openai import OpenAI
from flask import Flask, request, jsonify
from flask_cors import CORS
from sklearn.metrics.pairwise import cosine_similarity

app = Flask(__name__)
CORS(app)

def openai_generation(position, resumes):
    client = OpenAI(
        # Please copy the api key from instruction and paste here
        api_key= ""
    )
    resumes_list = resumes.split("<resume>")
    num_of_resumes = len(resumes_list)
    similarity_results = []
    position_embedding = client.embeddings.create(
        model="text-embedding-3-small",
        input=position).data[0].embedding
    for resume in resumes_list:
        resume_embedding = client.embeddings.create(
            model="text-embedding-3-small",
            input=resume).data[0].embedding
        similarity = cosine_similarity([position_embedding], [resume_embedding])[0][0]
        similarity_results.append((resume, similarity))
    similarity_results.sort(key=lambda x: x[1], reverse=True)
    n = min(2, num_of_resumes)
    matches = similarity_results[:n]
    completion = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system",
             "content": f"You need to help the user to match resumes with this job position: {position}. Please return your answer in Markdown format. You have found these candidates who match the most: {matches}"},
            {"role": "user", "content": "Briefly introduce and recommend these candidates to me, and explain why their resumes match this position."}
        ],
        temperature=0.5,
        max_tokens=512,
        top_p=1
    )
    result = completion.choices[0].message.content
    return result


@app.route('/process3', methods=['POST'])
def process_request():
    data = request.get_json(force=True)
    position = data.get("position")
    resumes = data.get("resumes")
    if not position:
        return jsonify({"error": "Missing 'position' field"}), 400

    if not resumes:
        return jsonify({"error": "Missing 'resume' field"}), 400

    try:
        response = openai_generation(position, resumes)
        return jsonify(response)
    except Exception as e:
        return jsonify({"error": str(e)}), 500


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5003, debug=True)

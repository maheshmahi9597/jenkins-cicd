from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "Hello TEchno Hacks Team this is erajala mahesh demo1 "

if __name__ == "__main__":
    app.run(debug=True)

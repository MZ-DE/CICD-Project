from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/wisdom")
def wise_quotes():
    return render_template("gen.html")

@app.route("/female-wisdom")
def fe_wise_quotes():
    return render_template("fem.html")


if __name__ == "__main__":
    app.run()
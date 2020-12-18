import os
from flask import Flask, render_template
from flask.json import jsonify

jam = Flask(__name__)

@jam.route("/")
def home_():
  return render_template("home.html")

@jam.route("/stream", methods=["GET"])
def stream():
  if not os.path.exists("stream"):
    os.mkdir("stream")
  for filename in os.listdir("stream"):
    sys.path.append("stream")

import os
from flask import Flask, render_template
from flask import send_file, send_from_directory, safe_join, abort
jam = Flask(__name__)

@jam.route("/")
def home_():
  return render_template("home.html")

@jam.route("/stream/<stream_name>")
x = glob.iglob('templates/stream/*.mp3', recursive=True)
for mp3 in x:
  a = print(mp3)
  return "mp3 files"
  return send_file(a, mimetype='audio/mpeg')





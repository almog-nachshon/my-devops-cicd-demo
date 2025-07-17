#!/usr/bin/env python3
import os
from flask import Flask

app = Flask(__name__)

VERSION = os.getenv("VERSION", "dev")

@app.route("/")
def hello():
    return f"Hello from CI/CD! Version: {VERSION}\nBy Almog Levinshtein"

if __name__ == "__main__":
    print(f"Hello from CI/CD! Version: {VERSION}")
    print("By Almog Levinshtein")
    app.run(host="0.0.0.0", port=80)

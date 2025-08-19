# count.py

from flask import Flask
import redis

app = Flask(__name__)

@app.route("/")
def homepage():
    return "Welcome to my Flask app"

@app.route("/count")
def count():
    r = redis.Redis(host="mydb", port=6379)  
    counter = r.incr("counter")
    return f"Counter: {counter}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002)

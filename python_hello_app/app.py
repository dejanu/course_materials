#!/usr/bin/env python3
# encoding: utf-8
import json
import os
from flask import Flask
from redis import Redis


# Get Redis connection details from environment variables
redis_host = os.getenv('REDIS_HOST', 'localhost')
redis_port = int(os.getenv('REDIS_PORT', 6379))

redis = Redis(host='redis', port=6379)
app = Flask(__name__)

@app.route('/')
def index():
    """Count and display no of page hits"""
    redis.incr('hits') # inc the value of key by amount, if no key exists, the value will be initialized as
    counter =  str(redis.get('hits'),'utf-8')
    return f'<br> <center><p><b>Hello view no :{counter}</b>🐉</p></center>'
    
if __name__ == "__main__":
	app.run(host='0.0.0.0', port=5000)
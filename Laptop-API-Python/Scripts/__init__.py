#!/usr/bin/env python
# encoding: utf-8

#Importing of Configuration Variables
import os
from os.path import join, dirname
from dotenv import load_dotenv
import yaml

#Importing Logging and error handling
import logging
import requests

#Data Manipulation
from csv import writer
import re
from datetime import date, datetime, timedelta
import string

#API Libraries
import json
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    return json.dumps({'name': 'alice', 'email': 'alice@outlook.com'})

@app.route('/get-user/<user_id>')
def get_user(user_id):
    user_data={
        "user_id": user_id,
        "name": "Scarlett",
        "email": "scarlett.dixon@protonmail.com"
    }
    return jsonify(user_data), 200


def main():
    navigation_loc='../Configuration'
    dotenv_path = join(dirname(__file__), f'{navigation_loc}/Vars.env')
    load_dotenv(dotenv_path)
    yaml_path = join(dirname(__file__), f'{navigation_loc}/Config.yml')
    with open(yaml_path, "r") as file:
        yaml_vars=yaml.safe_load(file)



if __name__ == "__main__":
    app.run()
    main()


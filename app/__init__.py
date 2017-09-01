import os

from os import environ

from flask import Flask, Blueprint
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config.from_object('config')

db = SQLAlchemy(app)

app.jinja_env.add_extension('jinja2.ext.do')

from app.common import views

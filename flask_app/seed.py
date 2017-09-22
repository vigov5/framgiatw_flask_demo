#!venv/bin/python

from flask import *
from app import db
from app.message.models import Message

message  = Message()
message.content = "Welcome to Framgia Workshop !"

db.session.add(message)
db.session.commit()

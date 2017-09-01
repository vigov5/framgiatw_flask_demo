from flask import render_template, g, send_from_directory, abort

from app import app
from app.message.models import Message

@app.route('/')
def index():
    messages = Message.query.all()

    return render_template(
        'common/index.html',
        messages=messages
    )

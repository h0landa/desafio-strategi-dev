from app import app


@app.route("/")
def hello_word():
    return 'Hello, Word!'
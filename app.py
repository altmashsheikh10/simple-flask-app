from flask import Flask

app = Flask(__name__)
name = 'Rahul'
@app.route('/')
def hello():
    return f"Hello {name}!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)
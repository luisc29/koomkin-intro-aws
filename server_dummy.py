import json
from flask import Flask, request

app = Flask(__name__)


@app.route("/", methods=['GET'])
def hello():
    print("peticion a /")
    return "hello server_dummy"


@app.route("/data", methods=['GET'])
def data():
    print("peticion a /")
    return json.dumps({'resultado': 'OK'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, threaded=True)

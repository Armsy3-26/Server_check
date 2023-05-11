import os
import psutil
from flask import Flask, request
from flask_restful import Api,Resource


app = Flask(__name__)

api = Api(app)


class ServerResource(Resource):

    def get():
        pass

    def post():
        pass



api.add_resource(ServerResource, "/serverresource/v.1/")

if __name__ == '__main__':
    app.run(port=5000, host='0.0.0.0')



from typing import Dict
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_jwt_extended import JWTManager, create_access_token, get_jwt_identity, jwt_required

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:////tmp/test.db'
app.config['JWT_SECRET_KEY'] = 'mysecretkey'
db = SQLAlchemy(app)
jwt = JWTManager(app)

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    password = db.Column(db.String(80), nullable=False)

    def __repr__(self):
        return '<User %r>' % self.username

class GreeterInterface:
    def greet(self, name: str) -> str:
        pass

class EnglishGreeter(GreeterInterface):
    def greet(self, name: str) -> str:
        return f"Hello, {name}!"

class SpanishGreeter(GreeterInterface):
    def greet(self, name: str) -> str:
        return f"¡Hola, {name}!"

class FrenchGreeter(GreeterInterface):
    def greet(self, name: str) -> str:
        return f"Bonjour, {name}!"

class GreeterFactory:
    def __init__(self):
        self.greeters: Dict[str, GreeterInterface] = {
            'english': EnglishGreeter(),
            'spanish': SpanishGreeter(),
            'french': FrenchGreeter()
        }

    def create_greeter(self, language: str) -> GreeterInterface:
        if language in self.greeters:
            return self.greeters[language]
        raise ValueError(f"Invalid language: {language}")

factory = GreeterFactory()

# Added endpoint for authentication/connection
@app.route('/authenticate', methods=['POST'])
def authenticate():
    # Get the language, username and password from the request
    language = request.json['language']
    username = request.json['username']
    password = request.json['password']

    # Authenticate the user using the database
    user = User.query.filter_by(username=username, password=password).first()
    if user:
        # Generate the JWT token
        access_token = create_access_token(identity=username)
        greeter = factory.create_greeter(language)
        greeting = greeter.greet(username)
        # Return the JWT token and the greeting in a JSON object
        return jsonify(access_token=access_token, greeting=greeting)
    else:
        return jsonify(message="Invalid username or password"),401

# added verify endpoint
@app.route('/verify', methods=['GET'])
@jwt_required
def verify():
    current_user =

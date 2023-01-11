from flask import Flask, request, jsonify
from flask_jwt_extended import JWTManager, create_access_token, get_jwt_identity, jwt_required
from mymodels import User, GreeterFactory

app = Flask(__name__)
app.config['JWT_SECRET_KEY'] = 'mysecretkey'
jwt = JWTManager(app)

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
        return jsonify(message="Invalid username or password"), 401

# added verify endpoint
@app.route('/verify', methods=['GET'])
@jwt_required
def verify():
    current_user = get_jwt_identity()
    return jsonify(logged_in_as=current_user), 200

if __name__ == '__main__':
    app.run()

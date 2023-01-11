# NHCC104: Intro To Client-Server Relationships Assignments

---

## Greeter Python API

### Code

```
from flask import Flask, request, jsonify
from flask_jwt_extended import JWTManager, create_access_token, get_jwt_identity, jwt_required

app = Flask(__name__)
app.config['JWT_SECRET_KEY'] = 'mysecretkey'
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
        return jsonify(message="Invalid username or password"), 401

# added verify endpoint
@app.route('/verify', methods=['GET'])
@jwt_required
def verify():
    current_user = get_jwt_identity()
    return jsonify(logged_in_as=current_user), 200

if __name__ == '__main__':
    app.run()
```

---

## NodeJS Socket Chat With Verification Hook

### Code

```
const express = require('express');
const app = express();
const server = require('http').Server(app);
const io = require('socket.io')(server);
const axios = require('axios');
const jwt = require('jsonwebtoken');

//const JWT_SECRET = 'mysecretkey';
const API_URL = 'http://localhost:8000/verify';

io.on('connection', (socket) => {
    socket.on('authenticate', (token) => {
        try {
            // Verify the JWT token (don't actually, let Python auth server verify it)
            //const decoded = jwt.verify(token, JWT_SECRET);
            //console.log(`User authenticated: ${decoded.username}`);
            // Ping the /verify API endpoint to check the token
            axios.get(API_URL, { headers: { Authorization: `Bearer ${token}` } })
            .then((response) => {
                // If the token is valid, join the socket to a chat room
                socket.join('chatroom');
                socket.emit('authenticated');
                socket.on('chat message', (msg) => {
                    io.to('chatroom').emit('chat message', msg);
                });
            })
            .catch((error) => {
                // If the token is invalid, disconnect the socket
                console.log(`Error validating token: ${error.response.data.message}`);
                socket.emit('unauthorized', error.response.data.message);
                socket.disconnect();
            });
        } catch (error) {
            // If the JWT is invalid, disconnect the socket
            console.log('Error decoding token:', error);
            socket.emit('unauthorized', 'Invalid token');
            socket.disconnect();
        }
    });
});

server.listen(3000, () => {
    console.log('Server listening on port 3000');
});

```

---

## React Chat Client

### Code

```
import React, { useState } from 'react';
import axios from 'axios';
import io from 'socket.io-client';

const API_URL = 'http://localhost:8000/authenticate';
const SOCKET_URL = 'http://localhost:3000';

function Authenticate({ onAuthenticate }) {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [language, setLanguage] = useState('english');
  const [error, setError] = useState(null);

  async function handleSubmit(e) {
    e.preventDefault();

    try {
      const { data } = await axios.post(API_URL, {
        username,
        password,
        language
      });
      onAuthenticate(data.access_token);
    } catch (error) {
      setError(error.response.data.message);
    }
  }

  return (
    <form onSubmit={handleSubmit}>
      <label>
        Username:
        <input type="text" value={username} onChange={e => setUsername(e.target.value)} />
      </label>
      <br />
      <label>
        Password:
        <input type="password" value={password} onChange={e => setPassword(e.target.value)} />
      </label>
      <br />
      <label>
        Language:
        <select value={language} onChange={e => setLanguage(e.target.value)}>
          <option value="english">English</option>
          <option value="spanish">Spanish</option>
          <option value="french">French</option>
        </select>
      </label>
      <br />
      <button type="submit">Authenticate</button>
      {error && <p style={{ color: 'red' }}>{error}</p>}
    </form>
  );
}

function Chat({ token }) {
  const [messages, setMessages] = useState([]);
  const [message, setMessage] = useState('');
  const [socket, setSocket] = useState(null);

  if (!token) {
    return null;
  }

  if (!socket) {
    const socket = io(SOCKET_URL, {
      query: { token },
      transports: ['websocket']
    });

    socket.on('connect', () => {
      socket.emit('authenticate', { token });
    });

    socket.on('authenticated', () => {
      setSocket(socket);
    });

    socket.on('unauthorized', (msg) => {
      setSocket(null);
    });

    return <p>Connecting...</p>;
  }

  function handleSubmit(e) {
    e.preventDefault();
    socket.emit('chat message', message);
    setMessage('');
  }

  socket.on('chat message', (msg) => {
    setMessages(msgs => [...msgs, msg]);
  });

  return (
    <div>
      <ul>
        {messages.map((msg, index) => (
          <li key={index}>{msg}</li>
        ))}
      </ul>
      <form onSubmit={handleSubmit}>
        <input type="text" value={message} onChange={e => setMessage(e.target.value)} />
        <button type="submit">Send</button>
      </form>
    </div>
  );
}

```

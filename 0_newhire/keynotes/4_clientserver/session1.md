# NHCC104: Intro To Client-Server Relationships

---

## HTTP Overview

HTTP (Hypertext Transfer Protocol) is the foundation of the web, and it is a simple and widely supported protocol for sending and receiving data over the internet. However, HTTP is not secure, and it is vulnerable to attacks such as man-in-the-middle attacks, where an attacker can intercept and modify the data being sent between the client and the server.

To address this issue, HTTPS (HTTP Secure) was developed. HTTPS is a secure version of HTTP that uses SSL (Secure Sockets Layer) or TLS (Transport Layer Security) to encrypt the data being sent between the client and the server. This makes it much more difficult for an attacker to intercept or modify the data, and it helps to protect the privacy and security of the users.

---

The HTTP request cycle is the process by which a client sends an HTTP request to a server, and the server responds with an HTTP response. Here is a brief overview of the HTTP request cycle:

- The client sends an HTTP request to the server, specifying the method (such as GET or POST), the URL, and any headers or data that need to be sent with the request.
- The server receives the request and processes it, using any headers or data that were included with the request to determine how to handle the request.
- The server generates an HTTP response, which includes a status code and any data or headers that need to be sent back to the client.
- The server sends the response back to the client.
- The client receives the response and processes it, using any data or headers that were included with the response.

---

## Cookies & Sessions

Cookies are used to store data in the browser state, and they are often used to track state or store information across requests. For example, a cookie might be used to store a user's login session, so that the user can remain logged in even if they close their browser and open it again later.

To use cookies, the server sets a cookie in the HTTP response, and the browser stores the cookie on the client side. The browser then includes the cookie with each subsequent request to the same server, allowing the server to track state or store information across requests.

Overall, cookies are a way of storing data in the browser state and using that data to track state or store information across requests. They can be used in conjunction with the request state and the server state to build applications that maintain state across multiple requests.

---

## Architectures

- **2-tier architecture**: In a 2-tier architecture, the client communicates directly with the server, and the server is responsible for both processing the request and storing the data. This type of architecture is relatively simple, but it can be less scalable and less flexible than other architectures.

- **3-tier architecture**: In a 3-tier architecture, the client communicates with a middle layer called a "presentation layer," which in turn communicates with the server. The presentation layer is responsible for handling the user interface, while the server is responsible for processing the request and storing the data. This type of architecture is more scalable and flexible than a 2-tier architecture, but it requires more complex infrastructure.

- **n-tier architecture**: In an n-tier architecture, the client communicates with multiple layers of servers, each of which is responsible for a specific task. For example, one layer might be responsible for the user interface, another might be responsible for business logic, and another might be responsible for storing and retrieving data. This type of architecture is highly scalable and flexible, but it can be more complex to set up and maintain.

---

## Architecture Considerations

- **Scalability**: How easily can the architecture be scaled up or down to meet the needs of the application?

- **Flexibility**: How easily can the architecture be modified or extended to support new features or requirements?

- **Performance**: How fast and responsive is the architecture, and how well does it handle high volumes of traffic or large amounts of data?


---

- **Security**: How secure is the architecture, and how well does it protect against attacks or unauthorized access?

Overall, there are many different types of client-server architectures, and the best choice will depend on the:

- **Complexity**: How complex is the architecture, and how easy is it to set up and maintain?

---

- **Cost**: What is the cost of implementing and maintaining the architecture, both in terms of infrastructure and development resources?

- **Reliability**: How reliable is the architecture, and how well does it handle failures or downtime?

---

## REST APIs

- REST (Representational State Transfer) APIs are a common way of building web-based APIs that allow clients to interact with a server over the HTTP protocol.
- REST APIs typically use HTTP verbs such as GET, POST, PUT, and DELETE to specify the action to be taken, and they often return data in formats such as JSON or XML.
- REST APIs are generally stateless, which means that they do not maintain client state between requests. This can make it challenging to manage sessions or authenticate users, as each request must contain all of the necessary information.
- To authenticate users in a REST API, it is common to use techniques such as OAuth, API keys, or JSON Web Tokens (JWTs).
- To manage sessions in a REST API, it is common to use techniques such as cookies or session tokens, which are passed between the client and the server with each request.

---

## Sockets

- Sockets are a low-level networking protocol that allows clients and servers to communicate with each other in real-time over a network connection.
- Sockets can be used to build applications that require high levels of performance, such as real-time games or chat systems.
- Sockets are generally connection-based, which means that they maintain a persistent connection between the client and the server. This can make it easier to manage sessions and authenticate users, as the server can maintain state and track users over the course of the connection.
- To authenticate users in a socket-based application, it is common to use techniques such as password authentication or public-key cryptography.
- To manage sessions in a socket-based application, it is common to use techniques such as session cookies or session tokens, which are passed between the client and the server as part of the connection handshake.

---

## GraphQL

- GraphQL is a flexible and efficient way of building APIs that allows clients to request exactly the data they need, and nothing more.
- GraphQL allows clients to specify the shape of the data they need in a query, and the server responds with data that matches the shape of the query. This makes it easy for clients to get exactly the data they need, without having to deal with extra data or multiple round-trips to the server.
- GraphQL is flexible and extensible, and it allows servers to expose a rich and flexible API without having to anticipate the needs of the clients in advance.
- GraphQL is designed to be used over HTTP, and it can be used with any HTTP client or server.

## Vs REST

- Pro: REST APIs are relatively simple to build and use, and they are widely supported by a variety of clients and servers.
- Con: REST APIs can be inflexible, as they require the server to anticipate the needs of the clients in advance, and they may require multiple round-trips to the server to retrieve all of the data that the client needs.

---

## Unidirectional Dataflows

Unidirectional data flow is a design pattern that involves organizing the way data flows through an application in a single direction. This can help to simplify the architecture of an application and make it easier to understand and maintain.

There are several different ways to implement unidirectional data flow, but one common approach is to use a pattern called "flux." Flux is a pattern for building user interfaces that was developed by Facebook, and it involves organizing the application into a set of "stores" that hold the application's state, and a set of "actions" that represent events that can modify the state of the application.

In a Flux-based application, data flows in a single direction, from the action to the store. When an action is dispatched, it is processed by the store, which updates its internal state in response to the action. The store then broadcasts a change event, which triggers the view to update itself with the new state.

This unidirectional flow of data can make it easier to understand how an application works, as it limits the number of places that data can be modified, and it makes it clear how different parts of the application are related to each other. It can also make it easier to reason about the application's state, as there is a single source of truth for the state of the application.

Overall, unidirectional data flow is a useful design pattern for building applications, as it can help to simplify the architecture and make it easier to understand and maintain.

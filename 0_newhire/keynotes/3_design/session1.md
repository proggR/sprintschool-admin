# NHCC103: Intro To Software Design & Architecture

![contrast:400% invert width:600px drop-shadow:0,20px,20px,rgba(0,0,0,.8)](https://images.unsplash.com/photo-1618385455730-2571c38966b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80)

---
## Overview

Software design patterns are pre-defined solutions to common design problems that can be used to improve the structure and maintainability of software. They provide a common vocabulary and set of best practices that developers can use to solve common design problems in a consistent and effective manner.

Software architecture refers to the high-level structure of a software system, including the organization of its components, the relationships between those components, and the interfaces that are used to communicate between them. It is concerned with the "big picture" of how a software system is organized and how it will behave.

Here is a simple explanation of these concepts:

- Software design patterns: Imagine that you are building a house. You might use certain design patterns to help you build the house in a more effective and efficient way. For example, you might use a "floorplan" design pattern to help you layout the rooms in a logical and functional way, or you might use a "roofing" design pattern to help you choose the most appropriate materials and construction techniques for the roof. Software design patterns work in a similar way, by providing pre-defined solutions to common design problems that can be used to improve the structure and maintainability of software.

- Software architecture: Imagine that you are planning a road trip. You might create a map that shows the overall route you will take, as well as any detours or side trips that you might make along the way. The map is like a high-level view of your road trip, and it helps you understand the overall structure and plan for your journey. Software architecture works in a similar way, by providing a high-level view of the structure and behavior of a software system. It helps developers understand how the different components of the system are organized and how they will work together to achieve the desired goals.

---

## Design Patterns

- **Singleton**: The singleton pattern is used to ensure that a class has only one instance, and provides a global access point to that instance. This pattern is useful when it is important to have only one instance of a class, and when that instance needs to be accessed from multiple places in the code.

- **Factory**: The factory pattern is used to create objects in a super class, but allow subclasses to alter the type of objects that will be created. This pattern is useful when it is necessary to create objects of a specific type, but the type of object that should be created is not known until runtime.

- **Abstract factory**: The abstract factory pattern is used to create a group of related or dependent objects without specifying their concrete classes. This pattern is useful when it is necessary to create a group of objects that work together, but the specific types of objects that should be created are not known until runtime.

---

- **Builder**: The builder pattern is used to separate the construction of a complex object from its representation, so that the same construction process can create different representations. This pattern is useful when it is necessary to create complex objects with a large number of configuration options, and when it is important to be able to create these objects in a step-by-step manner.

- **Prototype**: The prototype pattern is used to create new objects by copying existing objects, rather than creating new objects from scratch. This pattern is useful when it is more efficient to create new objects by copying existing objects, rather than creating them from scratch.

- **Adapter**: The adapter pattern is used to convert the interface of a class into another interface that is expected by the client. This pattern is useful when it is necessary to use an existing class, but its interface is not compatible with the rest of the code.

---

- **Bridge**: The bridge pattern is used to decouple an abstraction from its implementation, so that the two can vary independently. This pattern is useful when it is necessary to be able to change the implementation of an abstraction without affecting its clients.

- **Composite**: The composite pattern is used to compose objects into tree structures, and treat individual objects and compositions of objects uniformly. This pattern is useful when it is necessary to treat individual objects and compositions of objects in a similar manner.

- **Decorator**: The decorator pattern is used to add new behavior to existing objects dynamically, by wrapping them in a decorator object. This pattern is useful when it is necessary to add new behavior to existing objects without changing their code.

---

## Architecture Topologies

- **Monolithic**: A monolithic architecture is a single, self-contained unit that contains all of the components of a software system. This type of architecture is simple and easy to understand, but it can be difficult to maintain and scale as the system grows. Monolithic architectures are often used for small to medium-sized systems, or for systems that are not expected to change significantly over time.

- **Microservices**: A microservices architecture is a collection of small, independent services that work together to form a larger system. This type of architecture is modular and flexible, and it allows for easy scalability and deployment. Microservices architectures are often used for large, complex systems that need to be able to evolve and change over time.

---

- **Client-server**: A client-server architecture is a system in which a central server provides services to multiple clients. This type of architecture is often used for systems that need to support multiple users or devices, and it allows for easy scalability and centralized management.

- **Peer-to-peer**: A peer-to-peer (P2P) architecture is a system in which each node in the network acts as both a client and a server. This type of architecture is decentralized and does not require a central server, which makes it suitable for systems that need to be resilient and scalable. P2P architectures are often used for systems that need to support large numbers of users or devices.


---

## Design Patterns Meet Architecture Topologies

- **Monolithic architecture**: In a monolithic architecture, design patterns such as the factory pattern or the singleton pattern might be used to manage the creation and initialization of objects within the system. The decorator pattern or the composite pattern might also be used to add new functionality or extend the capabilities of existing objects.

- **Microservices architecture**: In a microservices architecture, design patterns such as the adapter pattern or the bridge pattern might be used to facilitate communication and integration between the different microservices. The prototype pattern or the builder pattern might also be used to create new microservices or to assemble them from existing components.

---

- **Client-server architecture**: In a client-server architecture, design patterns such as the adapter pattern or the facade pattern might be used to adapt the interface of the server to the needs of the client, or to provide a simplified interface to a complex system. The observer pattern or the mediator pattern might also be used to facilitate communication between the client and the server.

- **Peer-to-peer architecture**: In a peer-to-peer architecture, design patterns such as the iterator pattern or the visitor pattern might be used to traverse and manipulate the data that is stored within the network. The command pattern or the state pattern might also be used to manage the behavior of the nodes within the network.

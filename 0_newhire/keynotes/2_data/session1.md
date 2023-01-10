# NHCC102: Intro To Data Modelling

![contrast:400% invert width:600px drop-shadow:0,20px,20px,rgba(0,0,0,.8)](https://images.unsplash.com/photo-1529078155058-5d716f45d604?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80)

---

## Primary Modelling Concerns

- **Data structure**: One of the most important considerations in data modeling is the structure of the data itself. This includes the types of data that are being stored (e.g., text, numbers, dates), the format of the data (e.g., fixed-length or variable-length), and the relationships between different pieces of data (e.g., one-to-one, one-to-many, many-to-many).

- **Performance**: Another important consideration in data modeling is performance. Data models should be designed in a way that minimizes the amount of time and resources needed to store, retrieve, and manipulate data. This might involve choosing data structures that are optimized for specific types of queries, or partitioning data in a way that reduces the amount of data that needs to be processed at any given time.

---

- **Scalability**: Data models should also be designed to be scalable, so that they can handle an increasing amount of data over time without degrading in performance. This might involve choosing data structures that are efficient for inserting and deleting data, or partitioning data in a way that allows it to be distributed across multiple servers.

- **Maintainability**: Data models should also be designed to be maintainable, so that they can be easily modified and updated as the needs of the system change. This might involve choosing data structures that are flexible and adaptable, or using design patterns that facilitate the modification and evolution of the data model.

---

## Design Patterns

- **Entity-relationship (ER) model**: The ER model is a graphical representation of the data and relationships within a system. It is often used to model the structure of a database, and it is particularly useful for representing one-to-one, one-to-many, and many-to-many relationships.

- **Object-oriented model**: The object-oriented model is a data model that is based on the concept of "objects," which are self-contained units that represent real-world entities and the relationships between them. This model is often used to model complex, dynamic systems, and it is particularly useful for representing inheritance and polymorphism.

---

- **Relational model**: The relational model is a data model that is based on the concept of "relations," which are tables that represent the data and relationships within a system. This model is based on the idea of organizing data into rows and columns, and it is particularly useful for representing complex relationships between data.

- **NoSQL model**: The NoSQL (Not Only SQL) model is a data model that is designed for storing and manipulating large amounts of data that is not well-suited to the relational model. NoSQL models include a variety of different data structures, such as key-value stores, do`Hello, my name is John and I am 30 years old.`cument databases, and graph databases, and they are often used for handling large volumes of data that need to be stored and accessed in real-time.

---

## RDBMS Overview


- **Schema**: A schema is the overall structure and organization of a database. It includes the tables, columns, data types, and relationships between the tables.

- **Data types**: Data types specify the kind of data that can be stored in a column, such as text, numbers, or dates. Different RDBMSs support different data types, and it is important to choose the appropriate data type for each column based on the kind of data that will be stored.

---

- **Triggers**: Triggers are pieces of code that are automatically executed by the database in response to certain events, such as the insertion of a new row into a table. Triggers can be used to enforce constraints, to update other tables, or to perform other actions based on the data in the database.

- **Indexes**: Indexes are used to speed up the search process in a database. They are created on specific columns in a table, and they allow the database to quickly find rows that match a particular value or range of values.

---

- **Engines**: An RDBMS engine is the software component that is responsible for storing and retrieving data from the database. Different RDBMSs use different engines, and the choice of engine can have a significant impact on the performance and capabilities of the database.


---

## Schemas

- **Tables**: A table is a structured collection of data that is organized into rows and columns. Each row represents a unique record, and each column represents a specific piece of data. Tables are typically used to store data about a specific entity, such as employees, products, or orders.

- **Columns**: A column is a vertical slice of a table that represents a specific piece of data. Each column has a name and a data type, and each row in the table has a value for that column. Columns can be used to store data of different types, such as text, numbers, or dates.

---

- **Data types**: Data types specify the kind of data that can be stored in a column. Different RDBMSs support different data types, and it is important to choose the appropriate data type for each column based on the kind of data that will be stored. Some common data types include:
    - INTEGER: A whole number.
    - REAL: A decimal number.
    - TEXT: A string of characters.
    - DATE: A date and time.

---

- **Relationships**: Relationships are the connections between different tables in a database. There are several types of relationships that can be defined in a schema, including:
    - One-to-one: A one-to-one relationship exists when each row in one table is related to exactly one row in another table.
    - One-to-many: A one-to-many relationship exists when one row in a table is related to many rows in another table.
    - Many-to-many: A many-to-many relationship exists when many rows in one table are related to many rows in another table.
- Relationships are defined using **foreign keys**, which are columns that contain the primary key of a related table. By establishing relationships between tables, it is possible to link and retrieve data from multiple tables in a single query.

---

## SQL

- **CREATE**: The CREATE command is used to create new tables, views, or other objects in the database. For example, the following SQL statement creates a new table called "employees" with three columns:

```
    CREATE TABLE employees (
        employee_id INTEGER PRIMARY KEY,
        employee_name TEXT NOT NULL,
        employee_salary REAL
    );
```

---

- **INSERT**: The INSERT command is used to add new rows of data to a table. For example, the following SQL statement inserts a new row into the "employees" table:

```
    INSERT INTO employees (employee_id, employee_name, employee_salary)
    VALUES (1, 'John Smith', 50000);
```

---

- **SELECT**: The SELECT command is used to retrieve data from a table. For example, the following SQL statement retrieves all rows from the "employees" table:

```
    SELECT * FROM employees;
```

---

- **UPDATE**: The UPDATE command is used to modify existing rows of data in a table. For example, the following SQL statement updates the employee salary for the employee with ID 1:

```
    UPDATE employees
    SET employee_salary = 55000
    WHERE employee_id = 1;
```

---

- **DELETE**: The DELETE command is used to delete rows of data from a table. For example, the following SQL statement deletes the employee with ID 1 from the "employees" table:
```
    DELETE FROM employees
    WHERE employee_id = 1;
```

---

## Normalization

- **First normal form (1NF)**: A schema is in 1NF if it meets the following criteria:
    - Each column contains a single value.
    - There are no repeating groups of columns.

- **Second normal form (2NF)**: A schema is in 2NF if it meets the following criteria:
    - It is in 1NF.
    - It has no partial dependencies. (A partial dependency is a situation where a non-key attribute is functionally dependent on only a part of the primary key.)

---

- **Third normal form (3NF)**: A schema is in 3NF if it meets the following criteria:
    - It is in 2NF.
    - It has no transitive dependencies. (A transitive dependency is a relationship between three attributes, where the value of one attribute determines the value of a second attribute, which in turn determines the value of a third attribute.)

- **Fourth normal form (4NF)**: A schema is in 4NF if it meets the following criteria:
    - It is in 3NF.
    - It has no multi-valued dependencies. (A multi-valued dependency is a situation where a non-key attribute is functionally dependent on multiple other non-key attributes.)

---

- **Fifth normal form (5NF)**: A schema is in 5NF if it meets the following criteria:
    - It is in 4NF.
    - It has no join dependencies. (A join dependency is a situation where the schema can be decomposed into two or more smaller schemas, and the original schema can be reconstructed by performing a join operation on those smaller schemas.)

---

## Schema Migration Process

- **Identify the entities (tables) in the schema**: The first step in normalization is to identify the entities (tables) in the schema, and to determine the relationships between those entities. This might involve reviewing the existing schema, analyzing the data that is being stored, and identifying any patterns or dependencies that exist between different pieces of data.

- **Identify functional dependencies**: The next step is to identify the functional dependencies within the schema. A functional dependency is a relationship between two attributes (columns) in a table, where the value of one attribute determines the value of the other attribute. For example, in a table that stores information about employees, the employee ID might be functionally dependent on the employee name, because the employee ID is uniquely determined by the employee name.

---

- **Eliminate transitive dependencies**: Once the functional dependencies have been identified, the next step is to eliminate any transitive dependencies that might exist within the schema. A transitive dependency is a relationship between three attributes, where the value of one attribute determines the value of a second attribute, which in turn determines the value of a third attribute. For example, if a table stores information about employees, and the employee department is functionally dependent on the employee ID, and the employee ID is functionally dependent on the employee name, then there is a transitive dependency between the employee name, employee ID, and employee department.

- **Eliminate partial dependencies**: The next step is to eliminate any partial dependencies that might exist within the schema. A partial dependency is a situation where a non-key attribute is functionally dependent on only a part of the primary key. For example, if a table stores information about employees, and the employee salary is functionally dependent on the employee ID, but the employee ID is a composite primary key that consists of both the employee name and the employee department, then there is a partial dependency between the employee salary and the employee name.

---

- **Normalize the schema**: Once all transitive and partial dependencies have been eliminated, the schema can be normalized into a series of smaller, more modular tables. This might involve breaking down large tables into smaller ones, or creating new tables to represent relationships between different entities.

- **Script migrations**: Once the schema has been normalized, the next step is to script the migrations that will be needed to move the data from the legacy schema to the refactored one. This might involve creating SQL scripts to alter the structure of the tables, to move data from one table to another, or to update the data in some way. It is important to carefully plan and test the migrations to ensure that they are performed correctly and that the data is not lost or corrupted during the process.

---

## Performance Sleuthing & Optimization

- **Inefficient query design**: One of the most common causes of slow performance in a database query is an inefficient query design. This might involve using inefficient algorithms, using unnecessarily complex queries, or failing to take advantage of available indexes.

- **Lack of indexes**: Indexes are used to speed up the search process in a database, and a lack of appropriate indexes can significantly slow down the performance of a query. It is important to carefully analyze the data and the queries being run against it, and to create indexes as needed to support the most common and important queries.

- **Fragmented indexes**: Over time, indexes can become fragmented, which means that the data is scattered across multiple pages on the disk. This can slow down the performance of a query, as the database engine has to read multiple pages in order to retrieve the data.

---

- **Insufficient memory**: If the database server does not have enough memory to store the data and indexes needed to support the query, it might have to read data from disk, which can significantly slow down the performance of the query.

- **Contention for resources**: If the database server is heavily loaded and there are many queries and transactions competing for the same resources, this can lead to contention and slow down the performance of individual queries.

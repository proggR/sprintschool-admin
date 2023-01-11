# NHCC102: Intro To Data Modelling Assignments

---

## Python

### Code
```
import csv

def map_schema1_to_schema2(data):
    mapped_data = []
    for row in data:
        mapped_row = {"Full Name": f"{row['First Name']} {row['Last Name']}",
                      "Age": row["Age"],
                      "Gender": row["Gender"],
                      "Occupation": row["Occupation"]}
        mapped_data.append(mapped_row)
    return mapped_data

def map_schema2_to_schema1(data):
    mapped_data = []
    for row in data:
        first_name, last_name = row["Full Name"].split(" ")
        mapped_row = {"First Name": first_name,
                      "Last Name": last_name,
                      "Age": row["Age"],
                      "Gender": row["Gender"],
                      "Occupation": row["Occupation"]}
        mapped_data.append(mapped_row)
    return mapped_data

# Read data from file with schema1 and map it to schema2
with open("schema1_data.csv") as file:
    reader = csv.DictReader(file)
    data = [row for row in reader]
    mapped_data = map_schema1_to_schema2(data)

# Write mapped data to file with schema2
fieldnames = ["Full Name", "Age", "Gender", "Occupation"]
with open("schema2_data.csv", "w") as file:
    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(mapped_data)

# Read data from file with schema2 and map it to schema1
with open("schema2_data.csv") as file:
    reader = csv.DictReader(file)
    data = [row for row in reader]
    mapped_data = map_schema2_to_schema1(data)

# Write mapped data to file with schema1
fieldnames = ["First Name", "Last Name", "Age", "Gender", "Occupation"]
with open("schema1_data.csv", "w") as file:
    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(mapped_data)
```

---

## Postgres

### Code

`sudo apt-get install postgresql postgresql-contrib`

`sudo service postgresql start`

`sudo -u postgres psql`

`CREATE DATABASE mydb;`

`CREATE DATABASE mydb OWNER myuser;`

`\l`: list databases

`\c mydb;`: connect database

`CREATE TABLE mytable (id SERIAL PRIMARY KEY, name VARCHAR(255), age INT);`

`\dt`: list tables created

`INSERT INTO mytable (name, age) VALUES ('John', 25), ('Mary', 35), ('Mike', 30);`

`SELECT * FROM mytable;`

`\q`

---

## Normalization

### Code

#### Original Dataset

```
Table: Orders
- OrderID (Primary key)
- CustomerID
- ProductID
- ProductQuantity
- ProductPrice
- ProductName
- ProductCategory
- ProductManufacturer
```

#### Refactoring to 1NF

```
Table: Orders
- OrderID (Primary key)
- CustomerID
- ProductID
- ProductQuantity
- ProductPrice

Table: Products
- ProductID (Primary key)
- ProductName
- ProductCategory
- ProductManufacturer
```

#### Refactoring to 2NF

```
Table: Orders
- OrderID (Primary key)
- CustomerID
- ProductID
- ProductQuantity
- ProductPrice

Table: Products
- ProductID (Primary key)
- ProductName
- ProductCategory

Table: Manufacturer
- ManufacturerID (Primary key)
- ManufacturerName
```

#### Refactoring to 3NF

```
Table: Orders
- OrderID (Primary key)
- CustomerID
- ProductID
- ProductQuantity
- ProductPrice

Table: Products
- ProductID (Primary key)
- ProductName
- ProductCategoryID (Foreign key)

Table: Categories
- CategoryID (Primary key)
- CategoryName

Table: Manufacturer
- ManufacturerID (Primary key)
- ManufacturerName

```

#### Refactoring to 5NF

```
Table: Orders
- OrderID (Primary key)
- CustomerID
- ProductID (Foreign key)
- ProductQuantity
- ProductPrice

Table: Products
- ProductID (Primary key)
- ProductName
- ProductCategoryID (Foreign key)
- ManufacturerID (Foreign key)

Table: Categories
- CategoryID (Primary key)
- CategoryName

Table: Manufacturer
- ManufacturerID (Primary key)
- ManufacturerName

Table: Product_Price
- ProductID (Foreign key)
- ProductPrice
- ProductPriceStartDate
- ProductPriceEndDate

Table: Product_Quantity
- ProductID (Foreign key)
- ProductQuantity
- ProductQuantityStartDate
- ProductQuantityEndDate
```
---

## CQRS Python Database Integration

### Code

#### Connection Module

```
import os
from sqlalchemy import create_engine

# read connection details from environment variables
user = os.environ['DB_USER']
password = os.environ['DB_PASSWORD']
host = os.environ['DB_HOST']
port = os.environ['DB_PORT']
database = os.environ['DB_NAME']

# create connection to the database
engine = create_engine(f'postgresql://{user}:{password}@{host}:{port}/{database}')
```

#### Write Operations

```
from sqlalchemy import create_engine
from sqlalchemy import Table, Column, Integer, String, MetaData
from my_pg_connect import engine

metadata = MetaData()

# define the 'products' table
products = Table('products', metadata,
                 Column('id', Integer, primary_key=True),
                 Column('name', String),
                 Column('price', Integer)
                 )

metadata.create_all(engine)

def add_product(name: str, price: int):
    """Insert a new product into the 'products' table"""
    ins = products.insert().values(name=name, price=price)
    conn = engine.connect()
    conn.execute(ins)

def update_product(product_id: int, price: int):
    """Update the price of a product in the 'products' table"""
    upd = products.update().where(products.c.id==product_id).values(price=price)
    conn = engine.connect()
    conn.execute(upd)

def delete_product(product_id: int):
    """Delete a product from the 'products' table"""
    del_st = products.delete().where(products.c.id==product_id)
    conn = engine.connect()
    conn.execute(del_st)
```

#### Read Operations

```
from sqlalchemy import create_engine
from sqlalchemy import Table, Column, Integer, String, MetaData
from my_pg_connect import engine

metadata = MetaData()

# define the 'products' table
products = Table('products', metadata,
                 Column('id', Integer, primary_key=True),
                 Column('name', String),
                 Column('price', Integer)
                 )

metadata.create_all(engine)

def get_product(product_id: int):
    """Retrieve a product from the 'products' table"""
    sel = products.select().where(products.c.id==product_id)
    conn = engine.connect()
    result = conn.execute(sel)
    return result.fetchone()

def get_all_products():
    """Retrieve all products from the 'products' table"""
    sel = products.select()
    conn = engine.connect()
    result = conn.execute(sel)
    return result.fetchall()
```

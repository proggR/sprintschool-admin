## Unit Testing In Python

### Code (unittest)

```
import unittest

def add(x, y):
    """Add two numbers together"""
    return x + y

def subtract(x, y):
    """Subtract two numbers"""
    return x - y

class TestMathFunctions(unittest.TestCase):

    def test_add(self):
        """Test the add function"""
        self.assertEqual(add(3, 4), 7)
        self.assertEqual(add(-3, -4), -7)
        self.assertEqual(add(0, 0), 0)

    def test_subtract(self):
        """Test the subtract function"""
        self.assertEqual(subtract(3, 4), -1)
        self.assertEqual(subtract(-3, -4), 1)
        self.assertEqual(subtract(0, 0), 0)

if __name__ == '__main__':
    unittest.main()
```

## Unit Testing In NodeJS

### Description

This example tests the add and subtract functions. We use describe blocks to group together tests for specific functionality. The test blocks contain the actual test cases. Each test case uses the expect() function to check that the output of the function is what we expect it to be, using matchers such as toBe() to compare the output with the expected result.

You can run this test suite by running jest command on your command line. It will execute all test files that match the pattern *.(test|spec).js and returns results of the tests.
Jest also provide lots of other options, assertion and utilities to help you test your applications.

### Code (jest)

```
const add = (x, y) => {
  return x + y;
}

const subtract = (x, y) => {
  return x - y;
}

describe('Math functions', () => {
  test('add two numbers', () => {
    expect(add(3, 4)).toBe(7);
    expect(add(-3, -4)).toBe(-7);
    expect(add(0, 0)).toBe(0);
  });

  test('subtract two numbers', () => {
    expect(subtract(3, 4)).toBe(-1);
    expect(subtract(-3, -4)).toBe(1);
    expect(subtract(0, 0)).toBe(0);
  });
});

```

## Unit Testing In ReactJS

### Description

This example uses enzyme's shallow method to render the MyComponent component, which allows us to test the component in isolation without rendering its children. describe block contains the test cases and each test case uses the expect() function to check that the rendered output of the component is what we expect it to be. We can use Enzyme's selector methods like find() and first() to search for specific element inside the component, and use the exists() method to check if component rendered correctly.

The beforeEach function is called before every test case and allows us to set up the component in a known state before each test. You can also use afterEach for cleaning up or reseting any state.

### Code (jest + enzyme)

```
import React from 'react';
import { shallow } from 'enzyme';
import MyComponent from './MyComponent';

describe('MyComponent', () => {
  let wrapper;
  beforeEach(() => {
    wrapper = shallow(<MyComponent />);
  });

  test('renders the component', () => {
    expect(wrapper.exists()).toBe(true);
  });

  test('renders a title', () => {
    expect(wrapper.find('h1').text()).toBe('Welcome');
  });

  test('renders a list', () => {
    expect(wrapper.find('ul').length).toBe(1);
  });

  test('renders a list item', () => {
    expect(wrapper.find('li').length).toBe(3);
  });

  test('the first list item has correct text', () => {
    expect(wrapper.find('li').first().text()).toBe('Item 1');
  });
});

```

## Publishing to AWS With Terraform


### Code 

```
# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Define an EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-0f9cfa7e0a5ad5dce"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name      = "my-key-pair"
}

# Define a security group for the instance
resource "aws_security_group" "web" {
  name        = "web"
  description = "Allow inbound traffic on ports 22, 80, and 443"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```

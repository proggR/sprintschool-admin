# NHCC107: Intro To Infrastructure & DevOps

---

## Cloud Components Overview

A web-oriented service hosted in a cloud environment typically consists of several components, including:

- **Load balancer**: A load balancer is a component that distributes incoming traffic across multiple servers or instances of the service. This helps to improve the scalability and reliability of the service, by allowing it to handle a large volume of traffic and to recover from failures.

- **Application servers**: Application servers are the components that host the actual service code and logic. These servers typically run the service's application code, and they may also handle tasks such as database access and cache management.

- **Database**: A database is a component that is used to store and retrieve data for the service. This can include data such as user information, application data, and metadata.

- **Cache**: A cache is a component that is used to store frequently accessed data in memory, in order to improve the performance of the service. This can include data such as user sessions, application data, and results of expensive database queries.

- **Monitoring and logging**: Monitoring and logging components are used to collect and store data about the performance and behavior of the service. This can include things like performance metrics, error logs, and system logs.

- **Security**: Security components are used to protect the service and its data from unauthorized access and attacks. This can include things like firewalls, encryption, and authentication mechanisms.

- Static asset storage is often a separate component in the architecture of a web-oriented service hosted in the cloud. Static assets are resources such as images, style sheets, and JavaScript files that are served to users as part of the service's user interface.

There are several options for storing and serving static assets in a cloud environment, including:

- **Object storage**: Object storage is a type of cloud storage that is designed for storing large amounts of unstructured data, such as static assets. Object storage is typically scalable, highly available, and inexpensive, making it a good choice for storing static assets.

- **Content delivery network (CDN)**: A CDN is a network of servers that are distributed around the world, and that are used to deliver content to users. CDNs can be used to store and serve static assets, and they can improve the performance and scalability of a service by serving content from servers that are physically closer to the users.

- **Block storage**: Block storage is a type of cloud storage that is typically used for storing data that needs to be accessed and modified frequently, such as system files and database data. Block storage can also be used to store static assets, although it is generally less efficient than object storage or a CDN.

Overall, there are many options for storing and serving static assets in a cloud environment, and the best option will depend on the specific needs and requirements of the service.

---

## DevOps Overview

DevOps is a term that refers to the practice of bringing together software development and operations teams in order to streamline and automate the process of building, testing, and delivering software. DevOps is focused on increasing efficiency, improving collaboration, and reducing the time it takes to bring new features and updates to users.

In the context of cloud-hosted apps and services, DevOps is particularly important because it enables teams to quickly and easily deploy and scale their applications in the cloud. This is often done using a variety of tools and practices, such as continuous integration, continuous delivery, and infrastructure as code.

Here is a brief overview of some of the key concepts and practices that are important in DevOps, as it pertains to cloud-hosted apps and services:

- **Continuous integration**: Continuous integration is the practice of automatically building, testing, and integrating code changes as they are made. This helps teams to identify and fix problems early in the development process, and to ensure that code changes are always built and tested on a consistent basis.

- **Continuous delivery**: Continuous delivery is the practice of automatically building and testing code changes, and making those changes available for deployment as soon as they pass all of the tests. This helps teams to rapidly and reliably deliver new features and updates to users.

- **Infrastructure as code**: Infrastructure as code is the practice of managing and provisioning infrastructure (such as servers, networks, and storage) using code, rather than manually configuring resources. This enables teams to automate the deployment and management of infrastructure, and to make changes more quickly and easily.

- **Automated testing**: Automated testing is the practice of using tools and scripts to automatically test code changes and identify problems. This can include unit testing, integration testing, and end-to-end testing, and it is often done as part of the continuous integration and continuous delivery process.

- **Configuration management**: Configuration management is the practice of managing and maintaining the configuration of servers, networks, and other infrastructure components. This can include tasks such as provisioning servers, installing software, and configuring settings.

- **Containerization**: Containerization is the practice of packaging applications and their dependencies into lightweight, portable containers that can be easily deployed and scaled in the cloud. This is often done using tools such as Docker, which enables teams to build, deploy, and manage containers in a consistent and automated way.

- **Monitoring and alerting**: Monitoring and alerting is the practice of using tools to continuously monitor the performance and availability of applications, and to send alerts when problems are detected. This helps teams to identify and address problems quickly, and to ensure that applications are always available and performing at their best.

- **Cloud orchestration**: Cloud orchestration is the practice of using tools to automate the deployment and management of applications in the cloud. This can include tasks such as provisioning servers, configuring networks, and scaling applications up or down as needed.

These are just a few examples of the key concepts and practices that are important in DevOps, as it pertains to cloud-hosted apps and services. DevOps is a broad and rapidly evolving field, and there are many other tools and techniques that are used to streamline and automate the process of building, testing, and delivering software.

---

## Unit Testing Overview

Unit testing is a software testing technique in which individual units or components of a software application are tested in isolation from the rest of the application. The goal of unit testing is to validate that each unit or component of the application is working as intended, and to identify and fix problems as early as possible in the development process.

Unit tests are typically written by developers as they are writing the code, and they are run automatically as part of the continuous integration and continuous delivery process. This helps teams to identify and fix problems early in the development process, and to ensure that code changes are always thoroughly tested before they are deployed.

Here are a few strategies for optimizing and speeding up unit testing pipelines:

- **Write efficient tests**: Writing efficient tests can help to reduce the time it takes to run the test suite. This can include things like minimizing the number of database queries or external service calls that are made during the test, and using test data that is as simple as possible.

- **Parallelize test execution**: Many unit testing frameworks support the ability to run tests in parallel, which can help to speed up the test suite by distributing the workload across multiple CPUs or cores.

- **Use test runners**: Test runners are tools that are designed to help manage and run test suites. They can help to optimize the test execution process, and to provide features such as parallelization, test filtering, and test result reporting.

- **Use mock objects**: Mock objects are simulated objects that are used to replace real objects in tests. By using mock objects, it is possible to eliminate dependencies on external services or resources, which can help to speed up the test suite and make it more predictable.

- **Continuously optimize the test suite**: It is important to continuously optimize the test suite as the codebase changes and evolves. This can involve regularly reviewing the test suite to identify and remove unnecessary or redundant tests, and to ensure that the test suite is as efficient and effective as possible.

- **Use code coverage tools**: Code coverage tools are tools that measure the percentage of the codebase that is covered by tests. By using code coverage tools, it is possible to identify areas of the codebase that are not covered by tests, and to focus testing efforts on those areas.

- **Use test automation tools**: Test automation tools are tools that are designed to automate the process of running and managing tests. These tools can help to reduce the time and effort required to run the test suite, and to provide features such as parallelization, test result reporting, and continuous integration.

Overall, there are many strategies that can be used to optimize and speed up unit testing pipelines. By using a combination of these strategies, it is possible to create a fast and efficient unit testing process that helps to identify and fix problems early in the development process, and to ensure that code changes are thoroughly tested before they are deployed.


---

## Continuous Integration/Continuous Deployment

Continuous integration (CI) is a software development practice in which code changes are automatically built, tested, and integrated into a shared repository as they are made. The goal of CI is to identify and fix problems early in the development process, and to ensure that code changes are always thoroughly tested before they are deployed. Continuous Deployment (CD) is an extension of CI that also aims to deploy the repository changes upon successful test completion.

There are many different ways that CI pipelines can be set up, and the specific flow of the pipeline will depend on the needs and requirements of the project. However, here are some common steps that are often included in a CI pipeline:

- **Code checkout**: The first step in a CI pipeline is often to checkout the code from the source control repository. This step typically involves pulling the latest version of the code from the repository, and preparing it for the build process.

- **Build**: The build step involves compiling the code, and potentially running other tasks such as linting, formatting, and dependency management. The goal of the build step is to produce a deployable version of the code.

- **Test**: The test step involves running automated tests on the code to validate that it is working as intended. This can include unit tests, integration tests, and end-to-end tests, and it is typically run on multiple platforms and environments to ensure that the code is compatible and reliable.

- **Deploy**: The deploy step involves making the code available for use. This can involve deploying the code to a staging environment for further testing, or to a production environment for users to access.

- **Monitor**: The monitor step involves monitoring the deployed code for any issues or problems, and alerting the team if there are any issues. This can include tasks such as error tracking, performance monitoring, and security monitoring.

These are just a few examples of the steps that might be included in a CI pipeline. The specific flow of the pipeline will depend on the needs and requirements of the project, and there may be many other steps or tasks that are included as well.

---

## IaC With AWS & Terraform

Terraform is an open-source infrastructure as code (IaC) tool that allows users to define and provision infrastructure resources using a high-level configuration language. Here is a simple example codebook that provisions a free tier EC2 instance on AWS using Terraform:

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

This codebook does the following:

- Configures the AWS provider, which is the connection to the AWS API.
- Defines an EC2 instance resource, which specifies the properties of the instance, such as the AMI (Amazon Machine Image) to use and the instance type.
- Defines a security group for the instance, which controls inbound and outbound traffic to and from the instance.

To use this codebook, you will need to have Terraform installed, and you will need to set up your AWS credentials. You can then use the `terraform init` and `terraform apply` commands to create the EC2 instance on AWS.

Overall, Terraform is a powerful and flexible tool for defining and provisioning infrastructure resources, and it is widely used in DevOps and cloud computing contexts.

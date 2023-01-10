# NHCC101: Intro To Programming & Linux CLI

---

## Linux CLI

The Linux command line is a powerful and flexible way to interact with a Linux-based operating system. Here is a crash course introducing the basics of Linux command line usage, including the most common commands:

- `cd`: The cd command stands for "change directory," and it is used to navigate the file system. To use it, you can specify a path to a directory, and the command line will change the current working directory to that path. For example: cd /home/user/documents.

- `ls`: The ls command stands for "list," and it is used to list the contents of a directory. By default, it will list the files and directories in the current working directory, but you can specify a path to list the contents of a different directory. For example: ls /home/user/documents.

- `mv`: The mv command stands for "move," and it is used to move or rename files and directories. To move a file or directory, you can specify the source path and the destination path. To rename a file or directory, you can specify the current name and the new name. For example: mv file.txt /home/user/documents/ or mv old_name.txt new_name.txt.

- `cp`: The cp command stands for "copy," and it is used to copy files and directories. To copy a file or directory, you can specify the source path and the destination path. For example: cp file.txt /home/user/documents/.

- `rm`: The rm command stands for "remove," and it is used to delete files and directories. To delete a file or directory, you can specify the path to the file or directory you want to delete. Be careful with this command, as it cannot be undone! For example: rm file.txt.

- `ln`: The ln command stands for "link," and it is used to create links between files and directories. There are two types of links: hard links and symbolic links. Hard links are actual copies of the file, while symbolic links are pointers to the file. For example: ln file.txt link.txt or ln -s file.txt link.txt.

- `df`: The df command stands for "disk free," and it is used to display information about the available space on the file system. For example: `df /home` will output the filesystem, block count, blocks used, blocks available, usage percentage, and the mountpoint.

- `grep`: The grep command is used to search for patterns in text. To use it, you can specify a pattern and a file or input source, and the command will print the lines that match the pattern. For example: grep "pattern" file.txt.

- `find`: The find command is used to search for files and directories in the file system. To use it, you can specify a starting directory and search criteria, and the command will print the paths of the matching files and directories. For example: find / -name "*.txt".

- `cat`: The cat command is used to concatenate and print files. To use it, you can specify one or more file paths, and the command will print the contents of the files to the screen. For example: cat file1.txt file2.txt.

- `sort`: The sort command is used to sort the lines of a file or input source. To use it, you can specify a file or input source, and the command will print the sorted lines to the screen. For example: sort file.txt.

- `ssh`: The ssh command stands for "secure shell," and it is used to establish a secure connection to a remote server. To use it, you can specify the username and the hostname or IP address of the server you want to connect to. For example: ssh user@server.example.com.

- `scp`: The scp command stands for "secure copy," and it is used to securely copy files between two servers. To use it, you can specify the source path, the destination path, and the hostname or IP address of the server. For example: scp file.txt user@server.example.com:/home/user/documents/.

Overall, these are just a few of the many powerful and useful commands available on the Linux command line. By learning and mastering these commands, you can become proficient at using the command line and effectively managing a Linux-based operating system.

---

## Bash Profile

A bash profile is a script that is executed every time you start a new bash shell. It is used to customize your shell environment, to set up aliases, functions, and variables, and to execute commands or scripts. There are two main bash profiles: .bash_profile and .bashrc, and they are located in your home directory.

The .bash_profile file is executed when you log in to your system, while the .bashrc file is executed every time you start a new bash shell. You can use these files to customize your shell environment and to define your own aliases, functions, and variables.

Here are some important keywords that you can use in your bash profile:

- `alias`: This keyword is used to define an alias for a command. An alias is a shorthand name for a command, and it can be used to make it easier to type or to add options or arguments to a command. For example, you can define an alias for the ls command as follows: alias ll='ls -l'. This will create an alias called ll that will execute the ls -l command when you type ll.

- `function`: This keyword is used to define a function. A function is a group of commands that can be executed as a single unit, and it can take arguments and return a value. For example, you can define a function to list the files in a directory as follows: list_files() { ls; }. This function will execute the ls command when you type list_files.

- `export`: This keyword is used to define an environment variable. An environment variable is a value that can be used by different programs and scripts, and it is stored in a special shell variable. For example, you can define an environment variable called EDITOR as follows: export EDITOR='nano'. This will set the EDITOR variable to nano, which is a text editor.

- `if`: This keyword is used to execute a command or a group of commands based on a condition. The if statement allows you to specify a condition and a command to execute if the condition is true. For example, you can check if a file exists and display a message if it does as follows: if [ -f '/path/to/file' ]; then echo 'File exists'; fi. This will display the message File exists if the file /path/to/file exists.

These are some of the most important keywords that you can use in your bash profile. By learning and mastering these keywords, you can customize your shell environment and create powerful and efficient scripts and programs.

---
## Bash Profile Example

Here is an example bash profile that includes examples of the keywords described above:

```
# Define an alias for the ls command
alias ll='ls -l'

# Define a function to list the files in a directory
list_files() {
  ls
}

# Define an environment variable
export EDITOR='nano'

# Check if a file exists and display a message if it does
if [ -f '/path/to/file' ]; then
  echo 'File exists'
fi

# Set the prompt to include the current directory and the time
PS1='[\u@\h \w] \t \$ '

# Execute a command every time the bash shell starts
echo 'Welcome to the bash shell!'
```

This bash profile defines an alias for the ls command, a function to list the files in a directory, an environment variable called EDITOR, and a command to check if a file exists and display a message if it does. It also sets the prompt to include the current user, host, working directory, and time, and it executes a command every time the bash shell starts.

By including these examples in your bash profile, you can customize your shell environment and automate tasks and commands that you use frequently. You can also create your own aliases, functions, and variables to make your work more efficient and productive.

---

## Core Building Blocks

Software development is the process of designing, implementing, and maintaining software applications. There are many fundamental concepts that are important to understand in order to be a successful software developer. Here is a crash course on some of the core building block concepts:

- **Variables**: A variable is a named storage location that can hold a value. In programming, variables are used to store data and to perform operations on that data. Variables can have different types, such as integers, floating-point numbers, strings, and so on.

- **Data types**: A data type is a classification of data based on the type of value it can hold. Common data types include integers, floating-point numbers, strings, and boolean values (true or false). Different programming languages have different sets of data types, and each data type has specific characteristics and behaviors.

- **Conditions**: A condition is an expression that can be evaluated as true or false. In programming, conditions are often used to control the flow of execution. For example, you can use a condition to check if a variable is equal to a certain value, or to determine if a number is greater than or less than another number.

- **Loops**: A loop is a control structure that allows you to execute a block of code multiple times. There are several types of loops, such as for loops, while loops, and do-while loops. Each type of loop has a specific syntax and behavior.

- **Functions**: A function is a block of code that performs a specific task and can be called from other parts of the program. Functions can take parameters (input values) and can return a value. Functions are useful for organizing and reusing code, and for abstracting away complex logic.

- **Objects**: An object is a data structure that represents a real-world entity or concept. Objects have properties (data) and methods (functions) that describe their behavior. Objects are used in object-oriented programming languages to model complex systems and to encapsulate data and behavior.

---

## Core Constructs

- **Arrays**: An array is a data structure that stores a collection of items. Arrays are useful for storing and manipulating lists of data. Arrays can be one-dimensional (a list of items) or multi-dimensional (a matrix of items).

- **Pointers**: A pointer is a variable that stores the memory address of another variable. Pointers are used to store and manipulate the addresses of variables, and to create dynamic data structures (such as linked lists and trees). Pointers are an advanced concept and are often used in systems programming and low-level programming.

- **Structures**: A structure is a data type that groups together related data items. Structures are used to define complex data types and to create custom data structures. Structures are often used in combination with pointers to create dynamic data structures.

- **Classes**: A class is a blueprint for creating objects. Classes define the properties and behavior of objects, and they provide a way to create objects that share a common structure and behavior. Classes are an important concept in object-oriented programming languages, such as Java and C++.

- **Interfaces**: An interface is a set of related methods that a class can implement. Interfaces provide a way to specify the behavior that a class must have, without specifying the implementation details. Interfaces are an important concept in object-oriented programming languages, and they are used to create flexible and reusable code.

- **Inheritance**: Inheritance is a mechanism that allows a class to inherit the properties and behavior of another class. Inheritance is an important concept in object-oriented programming, and it is used to create class hierarchies and to reuse code.

- **Polymorphism**: Polymorphism is the ability of a class or object to take on multiple forms. Polymorphism can be achieved through inheritance, interfaces, and other mechanisms, and it is an important concept in object-oriented programming. Polymorphism is used to create flexible and reusable code.

---

## Shell Variable & Function Example

Here is a simple shell script that provides examples of variables and functions:

```
#!/bin/bash

# Declare a variable
my_var=Hello

# Declare a function
my_function() {
  echo $1
}

# Use the variable and function
echo $my_var
my_function "World"
```

This script declares a variable called my_var and assigns it the value "Hello". It also declares a function called my_function that takes a single parameter and echoes it back. Finally, the script uses the variable and function by printing the value of my_var and calling my_function with the argument "World". When run, this script will output the following:

`Hello`
`World`

This is a simple example of how you can use variables and functions in a shell script. You can use these constructs to store and manipulate data, to organize and reuse code, and to perform complex tasks. By learning and mastering shell scripting, you can automate tasks and manage systems effectively.

---

## Python OOP Example

Here is a simple Python script that provides an example of object-oriented programming (OOP):

```
# Define a class
class Person:
  # Define the constructor
  def __init__(self, name, age):
    self.name = name
    self.age = age

  # Define a method
  def greet(self):
    print(f"Hello, my name is {self.name} and I am {self.age} years old.")

# Create an object
p = Person("John", 30)

# Call the method
p.greet()
```

This script defines a class called Person that has a constructor (__init__) and a method (greet). The constructor is used to initialize the object with a name and age, and the method is used to print a greeting message. The script then creates an object of the Person class and calls the greet method on it. When run, this script will output the following:

Hello, my name is John and I am 30 years old.

This is a simple example of how you can use OOP in Python. By learning and mastering OOP, you can design and implement complex and scalable software applications. OOP is a powerful programming paradigm that is used in many modern programming languages.

---

## Python Functional Example

```
# Define a function to calculate the square of a number
def square(x):
  return x ** 2

# Define a function to calculate the cube of a number
def cube(x):
  return x ** 3

# Define a function to apply a given function to a list of numbers
def apply_function(numbers, func):
  result = []
  for number in numbers:
    result.append(func(number))
  return result

# Use the function
numbers = [1, 2, 3, 4, 5]
squares = apply_function(numbers, square)
print(squares)
cubes = apply_function(numbers, cube)
print(cubes)
```

This script defines two functions: square and cube, which calculate the square and cube of a number, respectively. It also defines a function called apply_function that takes a list of numbers and a function as arguments, and applies the function to each number in the list.

Finally, the script creates a list of numbers and calls the apply_function function with this list and the square and cube functions as arguments. When run, this script will output the following:

`[1, 4, 9, 16, 25]`
`[1, 8, 27, 64, 125]`

This is an example of how you can use a functional programming approach to design in Python, and how you can use callbacks to pass functions as arguments and execute them dynamically. By using callbacks, you can create flexible and modular programs that can adapt to different scenarios and requirements.

---

## Git

Git is a version control system that is used to track changes in software projects and to manage collaborations. Git is a powerful and widely-used tool that is essential for modern software development. Here is a crash course on Git and its use from the command line for a basic workflow:

- **Install Git**: First, you need to install Git on your computer. You can download the latest version from the Git website (https://git-scm.com/) and follow the installation instructions.

- **Configure Git**: After installing Git, you should configure your username and email address. This is important because Git uses this information to identify you as the author of commits. To set your username and email address, use the following commands:

    - `git config --global user.name "Your Name"`
    - `git config --global user.email "your@email.com"`

- **Create a repository**: A repository is a container for your project. To create a new repository, use the git init command in the directory where you want to store your project. For example:

    - `cd myproject`
    - `git init`

- **Add and commit files**: To add files to your repository, use the git add command. This stages the files for commit. To commit the staged files, use the git commit command. This creates a new commit with the staged changes. For example:

    - `git add file1.txt file2.txt`
    - `git commit -m "Add initial files"`

- **Push and pull changes**: To share your changes with others, you need to push your commits to a remote repository (such as GitHub). To push your commits, use the git push command. To fetch and merge changes from a remote repository, use the git pull command. For example:

    - `git push origin master`
    - `git pull origin master`

These are the basic commands that you need to know to get started with Git. There are many other Git commands and features that you can use to manage your project and collaborate with others.

---

## Git Branching

Branching is a key feature of Git that allows you to create separate versions of your project and to work on them independently. There are many different branching patterns that you can use in Git, and the appropriate pattern for your project will depend on your needs and goals. Here are some common branching patterns:

- **Linear branching**: In linear branching, you create a single main branch (such as master) and make all of your commits to this branch. This is a simple and straightforward pattern that is suitable for small projects or projects with a single developer.

- **Feature branching**: In feature branching, you create a separate branch for each feature or task that you are working on. This allows you to develop each feature independently and to isolate changes from other features. When a feature is complete, you can merge it back into the main branch.

- **Gitflow branching**: Gitflow is a popular branching pattern that was developed by Vincent Driessen. In Gitflow, you create a master branch for the production-ready code and a develop branch for the active development. You create a separate branch for each feature or task, and you merge the completed features into the develop branch. When you are ready to release a new version, you create a release branch from develop and then merge it into master.

- **Trunk-based branching**: In trunk-based branching, you make all of your changes directly to the main branch (such as master). This pattern relies on frequent, small commits and on automated testing to ensure that changes are stable. Trunk-based branching is suitable for projects with a high rate of change and a low risk of conflicts.

Overall, there are many different branching patterns that you can use in Git, and the appropriate pattern for your project will depend on your needs and goals. By understanding and using different branching patterns, you can effectively manage the evolution of your project and collaborate with others.

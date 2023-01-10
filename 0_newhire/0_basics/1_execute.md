# NHCC101 Assignment

## Linux Environment Config Example

### Creating a .bash_lab alias file

- Explanation of what an alias is and why it can be useful
- Example of creating an alias for a frequently used command (e.g. alias ll='ls -la')
- Demonstration of creating a function in the .bash_lab file that performs a more complex task (e.g. a function that creates a new directory and changes into it)
- Explanation of how to source the .bash_lab file in order to use the aliases and functions defined in it

### Code

```
#
alias ll='ls -la'

newdir () {
  mkdir $1
  cd $1
}
```

## Shell Script Example

### Writing a shell script

- Explanation of the purpose and structure of a shell script
Demonstration of using variables in a shell script (e.g. assigning a value to a variable and using it in a command)
- Demonstration of creating a function in the shell script that performs a specific task (e.g. a function that takes a directory path as an argument and lists the files in it)
- Explanation of how to make the script executable and run it


### Code

```
#!/bin/bash

dir_path=$1

list_files() {
  ls $dir_path
}

list_files

```
## Python Object Example

### Writing a Python script

- Explanation of the purpose and structure of a Python script
- Demonstration of OOP in Python by defining a class and creating instances of that class
- Example of using the class to perform a specific task (e.g. a class that represents a shape and has a method that calculates its area)

### Code

```
class Shape:
  def __init__(self, width, height):
      self.width = width
      self.height = height

  def area(self):
      return self.width * self.height

rect = Shape(5, 10)
print(rect.area())
```

## Git Init & Push Example

### Initializing and publishing a Git repo

- Explanation of version control and Git
- Demonstration of initializing a Git repo in the project directory and adding the project files to it
- Explanation of how to push the repo to a remote server such as GitHub

### Code

```
git init
git add .
git commit -m "initial commit"
git remote add origin https://github.com/username/repo-name.git
git push -u origin master
```

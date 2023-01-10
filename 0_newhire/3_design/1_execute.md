# NHCC103: Intro To Software Design & Architecture

## Python Greeter Factory W Interface

### Description

The example defines an GreeterInterface which contains a single method greet(name) that returns a string. The GreeterFactory class has a dictionary of greeters containing instances of classes that implement the GreeterInterface. The factory has a single method create_greeter(language) that takes a language as input and returns an instance of the appropriate greeter class.

The factory is then used to create instances of the different greeters, which can then be used to greet a person by name.

This is a simple example but you could use this factory pattern to instantiate much more complex class and it allows to add or remove new greeters without any modification to the main codebase.

### Code

```

from typing import List

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

greeter = factory.create_greeter('english')
print(greeter.greet('John')) # Output: Hello, John!

greeter = factory.create_greeter('spanish')
print(greeter.greet('John')) # Output: ¡Hola, John!

greeter = factory.create_greeter('french')
print(greeter.greet('John')) # Output: Bonjour, John!


```

# KiraScript

KiraScript is a simple and intuitive programming language designed for clean syntax and ease of use. This document provides an overview of the KiraScript language, including its syntax, features, and built-in functions.

## Table of Contents

- [Features](#features)
- [Syntax](#syntax)
  - [Variables](#variables)
  - [Constant Variables](#constant-variables)
  - [Input/Output](#inputoutput)
  - [Conditional Statements](#conditional-statements)
  - [Loops](#loops)
  - [Functions (Recipes)](#functions-recipes)
  - [Nested Functions](#nested-functions)
- [Built-In Functions](#built-in-functions)
- [Example Program](#example-program)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)

---

## Features

- Clean and minimalistic syntax.
- Easy handling of variables and constants.
- Functions (called "recipes") with support for nested logic.
- Built-in functions for common operations.
- Support for dynamic and strongly typed variables.

---

## Syntax

### Variables

```plaintext
kira number = 10
kira bool = true
kira string = "Hello"
kira list = [10 true "Hello"]
```

### Constant Variables

Constant variables are defined using the `frozen` keyword and cannot be reassigned:

```plaintext
frozen kira x = 10
x = 10  # This will raise an error
```

### Input/Output

Use `serve()` for output and `receive()` for input:

```plaintext
serve("Hello World!\n")  # Outputs to console
kira input = receive()  # Reads input as a string
```

### Conditional Statements

```plaintext
if condition
    # Body
eat

if condition
    # Body
else
    # Body
eat
```

### Loops

```plaintext
while condition
    # Body
eat
```

### Functions (Recipes)

Functions in KiraScript are called "recipes":

```plaintext
recipe add(kira num1 kira num2)
    num1 + num2  # No return statement is needed
eat
```

### Nested Functions

Recipes can contain nested logic:

```plaintext
recipe div(kira num kira den)
    recipe safeToDiv(kira den)
        den != 0
    eat

    if safeToDiv(den)
        num / den
    else
        serve("Cannot divide by zero\n")
    eat
eat
```

---

## Built-In Functions

KiraScript comes with a variety of built-in functions:

- `serve()`: Outputs to console.
- `serveRaw()`: Outputs the runtime value of an expression.
- `receive()`: Parses input as a string.
- `abs(num)`: Absolute value.
- `floor(num)`: Rounds down value.
- `round(num)`: Rounds value.
- `ceil(num)`: Rounds value up.
- `sqrt(num)`: Takes the square root of a value.
- `pow(num num)`: Raises a value to a power.
- `num(any)`: Converts a value to a number.
- `bool(any)`: Converts a value to a boolean.
- `str(any)`: Converts a value to a string.
- `at(list num)`: Accesses an element in a list.
- `set(list num any)`: Sets an element in a list to a new value.
- `append(list any)`: Adds an element to a list.
- `pop(list num)`: Removes and returns an element from a list.

---

## Example Program

Here’s a simple KiraScript program that calculates the factorial of a number:

```plaintext
recipe factorial(kira n)
    if n <= 1
        1
    else
        n * factorial(n - 1)
    eat
eat

serve("Enter a number: ")
kira input = receive()
kira num = num(input)
kira result = factorial(num)
serve("Factorial of " + str(num) + " is " + str(result) + "\n")
```

---

## Getting Started

1. Clone the KiraScript repository:

   ```bash
   git clone https://github.com/your-username/KiraScript.git
   cd KiraScript
   ```

2. (Optional) Install dependencies if required for the interpreter.
3. Run your first KiraScript program once the interpreter is set up.
4. Add additional instructions as needed when the interpreter is implemented.

---

## Contributing

Contributions are welcome! Whether it's bug reports, feature requests, or pull requests, feel free to get involved. To contribute:

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m "Add feature"`).
4. Push to the branch (`git push origin feature-name`).
5. Open a Pull Request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](https://chatgpt.com/c/LICENSE) file for details.

---

## Disclaimer

- enjoy the debugging :)

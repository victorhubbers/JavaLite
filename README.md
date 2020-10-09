# JavaLite

[TOC]

## Language specification

### Data Types

JavaLite supports the following data types:

- `int`
- `boolean`
- `string`

### Arithmetic

JavaLite offers the following arithmetic operators

- `+` add operation
- `-` subtract operation
- `*` multiply operation

### Comparators

And the following boolean comparators

- `<` less than
- `<=` less/equal than
- `>` greater than
- `>=` greater/equal than
- `==` equal to
- `!=` not equal to

### logical operators

- `&&` and
- `||` or

### Flow control

- `if`: executes a piece of code depending on the value of a boolean expression.

```
if(true) {
    //execute these statements
}
```

- `else if`: same as if statement, but can only be executed after a previous if statement is not.

```
if(false) {
    //do not execute these statements
} else if(true){
    //execute these statements
}
```

- `else`: always accompanies an if statement, is executed when that if statement is not.

```
if(false) {
    //do not execute these statements
} else {
    //execute these statements.
}
```

- `loop`: repeats a block of statements the specified amount of times. The parameter must be an integer value.

```
loop(5) {
    //execute these statements 5 times
}
```

If it is passed by a variable the amount of times the loop runs can not be changed.

```
int a = 2
loop(a){
    //will loop 2 times

    a = 5

    //will still loop only 2 times, even though a has been updated
}
```

### Functions

JavaLite comes with the following two functions out of the box:

- `print()` prints a value.
- `input(<TYPE>)` accepts user input. The user has to provide a type in the function argument. This works for all data types. (However, it does not work in the online demo.)

#### Print function usage

The print function will print a single value that is passed, as long as it is valid. A single value can be in any form, that means that for example an expression will be seen as a single value. These are all valid print calls:

        print("Hello world!")
        print(1+2)
        print(someFunctionWithReturnType())
        print(input(int))

These are examples of invalid print calls:

        print() //does not have a value
        print(1 + "string") //not a valid expression
        print(voidFunction()) //function does not return a value

#### Input function usage

You always have to specify the data type that you want to input, so for example:

        string str = input(string)
        int i = input(int)

This will not work:

        string str = input()

#### Custom functions

It is possible to define your own functions, these will always be public methods. You can give as many parameters as you want, and they can be of any type.

        returnSum(int a, int b) {
                return a + b
        }

Functions always have to include a return statement at the end, but there does not have to be a value returned. Example:

```
printAndReturn(string s){
        print(s)
        return
}
```

### Comments

JavaLite only supports single comment lines like this:

`// this is a comment`

### Limitations

Although JavaLite meets all the requirements for the assignment, there are some things that are not possible that are possible in other languages.

The limitations include:

- While/for loops
- Global variables
- Math operators such as `%`, `/` and `^`
- Recursion

## Extra functionality

Functions in JavaLite are type inferred. The way this works is when you define a function you don't have to specify a return type. The type will be figured out by the Checker.
That's why a function like:

```
getAnInteger(){
        return 5
}
```

is not specified like:

```
int getAnInteger(){
        return 5
}
```

The checker is able to figure out the return type by visiting the value that is returned, and storing that type in a functionSymbol during compilation.

## Sample programs

Here is an overview of the example programs that are present in the compiler tests.

### Simple sample program that prints hello world

This program shows how you can declare a variable and how you can call the print function.

        string s = "Hello World!"

        print(s)

### Program that computes a simple mathematical equation and print the result

This program shows that it's possible to use multiple mathematical operators in a single line. There is also an example of what a comment will look like, this comment does not create any bytecode.

        int a = 4 + 5 * 2

        //output should be 14, NOT 18
        print(a)

### Counter program

This program counts to 100, at 50 it prints a string instead of just the counter value, and at 100 it will print "Yay - im done". This demonstrates the else if statement and that the if statement can be re-used many times and it won't break. There is also a loop in this program, the loop is very simple, it just repeats a block of code a certain amount of times.

        int counter = 0

        loop(100) {
                counter = increment(counter)

                if(counter == 50) {
                        print("The big five-0")
                } else if(counter == 100) {
                        print("Yay - I'm done")
                } else {
                        print(counter)
                }
        }

        increment(int num) {
                return num + 1
        }

### Age checker

In this example the user is asked to input their age, then an if statement is executed and depending on the user input it will print the appropriate line.

        print("How old are you?")

        int age = input(int)

        if(age >= 18) {
                print("You are old enough to buy alcohol.")
        } else {
                print("You are not old enough to buy alcohol.")
        }

### Program that implements loop and function that calculates a mathematical operation

This is a mix between variable assignment, printing, loops and functions.

        int a = 1

        loop(10) {
                a = calculateProduct(a, 2)
                print(a)
        }

        calculateProduct(int a, int b) {
                return a * b
        }

## Faulty programs

These are some examples of programs that do not work, with an explanation as to why they do not work.

### Variable assignment

The type checker will check if the declared type matches the given value, in this case int != string:

```
int a = "not an int"

Error: Unexpected data type: STRING, Expected: INT
```

### Scope error

If you try to access a variable from outside of its scope, the checker will notice and tell you that's not allowed.

```
int a = 1

loop(a){
	int b = 5
}
print(b)

Error: Symbol with identifier "b" does not exist in the scope
```

### Loop argument

The loop requires an int argument, in any other case it will be thrown out by the Checker.

```
string s = "test"
loop(s){
    print("You should not see this")
}

Error: Unexpected data type: STRING, Expected: INT
```

### Conditions 1

The if statement requires some boolean statement, to know if it should execute a block of statements or not.

```
int notAboolean = 0
if(notAboolean){
    print("wrong")
}

Error: Unexpected data type: INT, Expected: BOOLEAN
```

### Conditions 2

A comparator can be used to form a boolean statement, but only when 2 integers are compared.

```
if(true > 9){
    //can only compare integers
}

Error: Can only compare integer values using comparator: ">"
```

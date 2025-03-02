1.1 The Elements of Programming
===

Concepts: _primitive expressions_, _means of combination_, _means of abstraction_, _combinations_, _operator_, _operand_

Three powerful mechanisms provided by programmign lanugages for combining complex ideas from simpler ones
* primitive expressions: simplest entities
* means of combination: build compound elements from simpler elements
* means of abstraction: give names to compound elements to be treated as units


## 1.1.1 Expressions

A _combination_ is a list of expressions within parentheses
```scm
(* 3 4)
12
```
The leftmost is called the _operator_ and any that follow are _operands_.

## 1.1.2 Naming and the Environment

Use `define` to provide a _name_ which identifies a _variable_ whose _value_ is the object defined.

Example:

```scm
(define pi 3.14159)
```

The _environment_ or the _global environment_ provided by an interpreter keeps track of names.

## 1.1.3 Evaluating Combinations



# Abstract DataTypes

* Types are static and are resolved at compile time, they have no significance at runtime.
* Data constructor matters at runtime.


## What's a type and what's a data
* Types are static and resolve at compile time.
* Data constructors are resolved at runtime.

## Type and Data contructors
* Type and data constructors that take no arguments are called constants
* Bool is a type constant, True and False are it's data constructors, but they are also constants, only difference is they exists in runtime space only.

## Data constructor arities
* Data constructors with no arguments are called nullary
* One argument - unary
* Data constructors with more than one arguments are called Products

## What makes these datatypes algebraic ?
* All these datatypes can be classified into Sum or Product types.
* Sum and Products can be explained in the terms of cardinality.
* Carfinality is number of possible values it defines, 0 to infinity.

## newtype
* It defines a single unary data constructor.
* Cardinality of newtype is same as of the type it contains.
* It has no runtime overhead
* Difference between type and newtype is gone by the time the compiler generates the code.
* It's mostly used to imporve the code readability.
* We can define more stricter type checking within compile time.


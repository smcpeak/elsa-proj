## elsa-proj

This repository merely aggregates the dependencies required to build
Elsa as sub-modules in order to keep the versions in sync.

It contains:

* `smbase`: General-purpose utilities.
* `smflex`: My modified version of the Flex lexical analyzer generator.
* `ast`: Abstract Syntax Tree code generator tool.
* `elkhound`: GLR-based parser generator.
* `elsa`: The Elsa parser itself.

## Building

To compile and test:

```
$ ./configure
$ make [-j4]
$ make check [-j4]
```

# Homework 3

For this assignment you are to answer the following questions regarding grammars and parsers. This isn't a programming assignment per se, but you might want to experiment with some Rust code to answer some of the questions.

## Submission Instructions

1. Fork this repository into your own namespace. [Instructions](https://docs.gitlab.com/ee/workflow/forking_workflow.html#creating-a-fork)
2. Set your forked repository visibility to private. [Instructions](https://docs.gitlab.com/ee/public_access/public_access.html#how-to-change-project-visibility)
3. Add user "LehighCSE262" as a member to the project with "maintainer" access-level. [Instructions](https://docs.gitlab.com/ee/user/project/members/#add-a-user). 
4. Clone your newly forked repository. [Instructions](https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html#clone-a-repository) 
5. Write answers to all of the questions. For parse trees, you may draw these by hand and scan them, draw them in powerpoint and make a picture, or make little ascii trees (probably the easiest). For example:

```
Root
| Parent1
  | Child1
  | Child2
    | GrandChild
  | Child3
| Parent2
```

6. When you're ready to submit indicate this on the corresponding assignment on course site.

## Questions

### Question 1

Write a grammar in EBNF notation to capture the following:

#### a. Strings in Rust. 

Strings begin and end with a quotation mark. They may contain quote or back-slash characters if and only if those are escaped by a preceding backslash.

Valid strings:

- "hello world"
- "abcdefg1234567!@#$%^"
- "This is an escaped quote \" and an escaped backslash \\"

Invalid strings:

- "hello
- "he said "hello" "
- "This \ that"


#### b. Comments in Rust. 

These are delimited by /* and */ or by //

Valid comments:

- // comments can have any character including / and *
- //this is valid
- /* you can do a block like this on one line */

Invalid comments:

- / not valid,
- /* blocks need to be closed, so this is invalid

#### c. E-mail addresses. 

Use this as a guide for how e-mail addresses are formatted: http://www.huge.org/clapres/cla_4.html

Valid e-mail addresses:

- hello@world.com
- cim310@lehigh.edu
- info@bbc.co.uk

Invalid addresses:

- can't have spaces@gmail.com
- this.com
- name@.com

#### d. Phone numbers

Use this as a guide for how phone numbers are formatted: https://en.wikipedia.org/wiki/National_conventions_for_writing_telephone_numbers#United_States,_Canada,_and_other_NANP_countries

Valid phone numbers:

- 555-555-5555
- 123-456-7890

Invalid phone numbers:

- 484-023-9378
- 123-123-1234
- 5555555555

#### e. Numeric constants in Rust. 

These are binary, octal, decimal, hexadecimal, scientific.

- Binary numbers are prefixed with 0b and contain the digits 0 and 1. e.g. 0b01010110
- Octal numbers are prefixed with 0o and contain the digits 0 throgh 7. e.g. 0o12345670
- Decimal numbers have no prefix and contain the digits 0 through 9. An optional period can be inserted to indicate a floating point constant. They can optionally be negative indicated by a preceding - sign. e.g. 1234567890 or 12345.67890
- Hexadecimal number are prefixed with 0x and contain the digits 0-7, and the letters A-F. e.g. 0x1234567ABCDEF
- Decimal constants can be written in scientific notation of the form: AeN (A times ten raised to the power of N), where the exponent n is an integer, and the coefficient m is any real number. The integer n is called the order of magnitude and the real number m is called the mantissa. 

Optional underscores can be inserted into the middle of a number to improve readability. e.g. 1_000_000

Valid numeric constants:

- 0b1010101
- 0o1643
- 0o1010101
- 456
- 4.56e2
- 3.14159
- 0xFFAA12
- 1_000
- -123.456
- -123

Invalid numbers:

- 0b123
- 0xABCDEFG
- FFAA12
- 0o3.1415
- _1000
- 0000000123
- -0b10101

### Question 2

Errors in a program can be classified according to when they are detected and, if they are detected at compile time, what part of the compiler detects them. Using Rust, give an example of each of the following:

1. A lexical error, detected by the scanner.
2. A syntax error, detected by the parser.
3. A static semantic error, detected by semantic analysis.
4. A ownership error, detected by the borrow checker.
5. A lifetime error, detected through lifetime analysis of variables.

### Question 3

In Rust, what is the limit on the value of a usize? What happens in the event of arithmetic overflow? Don't look this up, try and figure it out on your own. What are the implications of size limits on the portability of programs from one machine/compiler to another?

### Question 4

Why is it difficult to tell whether a program is correct or not? How do you personally go about finding bugs in your code? What kinds of bugs are revealed by testing? What kind of bust cannot be caught by testing?

### Question 5

Consider the following grammar:

e stands for the string terminating character.

```ebnf
statement = assignment | subroutine_call;
assignment = identifier, ":=", expression;
subroutine_call = identifier, "(", argument_list, ")";
expression = primary, expression_tail;
expression_tail = operator, expression | e;
primary = identifier | subroutine_call | "(" , expression , ")";
operator = "+" | "-" | "*" | "/";
argument_list = expression, argument_tail;
argument_tail = "," , argument_list | e;
identifier = {a-z | A-Z | 0-9};
```

1. Construct a parse tree for the input string "print(x)".
2. Construct a parse tree for the input string "y := add(a,b)".
3. Construct a parse tree for the input string "z := 1 + 2 * 3".
4. Construct a parse tree for the input string "x := 9 * sin(x)".

### Question 6 

Consider the following context-free grammar:

```ebnf
G = G, B | G, N | e;
B = "(", E, ")";
E = E, "(", E, ")" | e;
N = "(", L, "]";
L = L, E | L, "(" | e;
```

1. Describe in English the language generated by this grammar. Hint: B stands for "balanced", N stands for "non-balanced".
2. Give a parse tree for the string "((]()".
3. Give a parse tree for the string "((()))".
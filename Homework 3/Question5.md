### Question 5

## 1. Construct a parse tree for the input string "print(x)".
```
statement
    |subroutine_call
        |identifier
            |"print"
        |"("    
        |argument_list
            |expression
                |primary
                    |identifier
                        |x
                |expression_tail
                    |e
            |argument_tail
                |e
        |")"

```

### 2. Construct a parse tree for the input string "y := add(a,b)".
```
statement
    |assignment
        |identifier
            |y
        |":="
        |expression
            |primary
                |identifier
                    |"add"
            |expression_tail
                |expression
            |primary
                |subroutine_call
                    |identifier
                        "add"
                    |"("
                    |argument_list
                        |expression
                            |primary
                                |identifier
                                    |a
                        |argument_tail
                            |","
                            |argument_list
                        |expression
                            |primary
                                |identifier
                                    |b
                        |argument_tail
                            |e
                    |")"
            |expression_tail
                |e

```

### 3. Construct a parse tree for the input string "z := 1 + 2 * 3".
```
statement
    |assignment
        |identifier
            |z
        |":="
        |expression
            |primary
                |identifier
                    |1
            |expression_tail
                |operator
                    |"+"
            |primary
                |identifier
                    |2
            |expression_tail
                |operator
                    |"*"
            |primary
                |identifier
                    |3
            |expression_tail
                |e
```

### 4. Construct a parse tree for the input string "x := 9 * sin(x)".
```
statement
    |assignment
        |identifier
            |x
        |":="
        |expression
            |primary
                |identifier
                    |9
            |expression_tail
                |operator
                    |"*"
            |primary
                |subroutine_call
                    |identifier
                        |"sin"
                    |"("
                    |argument_list
                        |expression
                            |primary
                                |identifier
                                    |x
                            |expression_tail
                                |e
                        |argument_tail
                            |e
                    |")"
```            

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
### Question 6 

## 1.
```
B, Balanced provides the brackets that start and end with "(" and ")". Additionally, more of those brackets can be created with E. U, Unbalanced provide brackets that start and end with "(" and "]". Additionally within U, "(" can be placed via L. G is the point where it gives the option of going to B or U. It is also the point where the program ends if there is no string characters left.
```

## 2.
```
Program
|G
    |G
    |N
        |"("
        |L
            |"("
        |"]"
    |G
    |B
        |"("
        |E
            |e
        |")"
    |e
|End
    
```

## 3.
```
Program
|G
    |G
    |B
        |"("
        |E
            |"("
            |E
                |"("
                |E
                    |e
                |")"
            |")"
        |")"
    |e
|End
```

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
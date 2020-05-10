### Notation
? all visible characters ? follows the Wikipedia definition for EBNF
All other formatting also follows Wikipedia's definitions and guidelines.

#### a. Strings in Rust

```ebnf
statement = assignment;
assignment = '"', expression, '"';
expression = identifier | '\"', expression, '\\"';
identifier = all_characters, { all_characters } ;
all_characters = ? all visible characters ? - "\" | '"';
```

#### b. Comments in Rust. 
```ebnf
statement = assignment;
assignment = line_comment | block_comment;
line_comment = "//", expression;
block_comment = "/*", expression, "*/";
expression = {all_characters};
all_characters = ? all visible characters ?;
```

#### c. E-mail addresses. 
```ebnf
statement = assignment;
assignment = name, "@", company, organization, [country];
name = valid_characters, { valid_characters } ;
company = letter, { letter } ;
organization = letter, { letter } ;
country = letter, { letter } ;
valid_characters = ? all visible characters ? - " ";
letter = "A" | "B" | "C" | "D" | "E" | "F" | "G"
       | "H" | "I" | "J" | "K" | "L" | "M" | "N"
       | "O" | "P" | "Q" | "R" | "S" | "T" | "U"
       | "V" | "W" | "X" | "Y" | "Z" | "a" | "b"
       | "c" | "d" | "e" | "f" | "g" | "h" | "i"
       | "j" | "k" | "l" | "m" | "n" | "o" | "p"
       | "q" | "r" | "s" | "t" | "u" | "v" | "w"
       | "x" | "y" | "z" ;
```

#### d. Phone numbers
```ebnf
statement = assignment;
assignment = area, "-", first, "-", second;
area = digit, digit, digit;
first = N_digit, digit, digit;
second = digit, digit, digit, digit;
digit = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;
N_digit = "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;
```

#### e. Numeric constants in Rust. 
```ebnf
statement = assignment;
assignment = initial_seq, following_digits;
binary = "0" | "1" ;
octal = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" ;
decimal = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;
hexadecimal = decimal | "A" | "B" | "C" | "D" | "E" | "F" ;
initial_seq = "0b" | "0o" | ["-",decimal,decimal | "0x" ;
following_digits = 
    match initial_seq {
        "0b" => {binary},
        "0o" => {octal},
        decimal, decimal => {decimal | "." | "_" },
        "0", "x" => {hexadecimal},
    };
```

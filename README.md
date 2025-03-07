# Programming Language Mylang
## 20210808039 Derya Salihoğlu, 20210808072 Eda Dana, 20230808604 Ecenur Soybelli,20230808622 Şevval yöntem 
### BNF Grammer
---------------------------------------------------------------
// program includes at least 1 statement

`<program> ::= <statement> | <statement_list>`

// statement can be assignment, if block, loop or print 

`<statement> ::= <assignment> | <constant> | <if_statement> | <for_statement> | <do_while_statement> | <command> ";"`
// statement_list

`<statement_list> ::= <statement> | <statement_list> <statement>`

// commands

`<command> ::= "print" "(" <expression> ")" | "exit" | "input" "(" <identifier> ")"`

// assigning variables

`<assignment> ::= <identifier> "=" <expression> ";"`

// defining constants

`<constant> ::= "const" <identifier> "=" <expression> ";"`

// variable types

`<boolean> ::= "true" | "false"
<integer> ::= [0-9]+
<float> ::= [0-9]+ "." [0-9]+
<character> ::= "'" [a-zA-Z0-9_ .,!?] "'"
<string> ::= "\"" [a-zA-Z0-9_ .,!?]* "\""
<identifier> ::= [a-zA-Z][a-zA-Z0-9_]*`

// functions

`<function> ::= "func" <identifier> "(" [<parameter_list>] ")" "{" <statement_list> "}"
<parameter_list> ::= <identifier> | <parameter_list> "," <identifier>`

// Mathematical operations with  precedence 

`<expression> ::= <expression> "+" <term> | <expression> "-" <term> | <term>
<term> ::= <term> "*" <factor> | <term> "/" <factor> | <term> "%" <factor>| <term> "**" <factor> | <factor> 
<factor> ::= <integer> | <float> | <identifier> | <character> | <string> | "(" <expression> ")"`

// Defining conditions

`<condition> ::= "(" <condition> ")" 
             | <expression> "<" <expression> 
             | <expression> ">" <expression> 
             | <expression> "==" <expression> 
             | <expression> "<=" <expression> 
             | <expression> ">=" <expression> 
             | <expression> "!=" <expression> 
             | !<condition> 
             | <condition> && <condition> 
             | <condition> "||" <condition>`

// if-else

`` `<if_statement>` `` ::= `"if" "(" <condition> ")" "{" <statement_list> "}"| "if" "(" <condition> ")" "{" <statement_list> "}" "else" "{" <statement_list>"}"`
                 
//  For döngüsü: ilk atama, koşul ve artırım ifadesi ":" ile ayrılır.

`` `<for_statement>` `` ::= `"for" "(" <assignment> ":" <condition> ":" <expression> ")" "{" <statement_list> "}"`
                 
//  do-while 

`` `<do_while_statement>` `` ::= `"do" "{" <statement_list>"}" "while" "(" <condition>")"`

// comment

`` `<comment>` `` ::=` "~" <character>* "~"`

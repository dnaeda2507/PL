# Programming Language White
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
### Explanations about the White Programming Language
-------------------------------------------------------
White is a simple programming language that includes fundamental programming constructs such as variable assignments, loops, conditions, functions, and expressions. Below is a detailed explanation of its syntax and features based on its BNF grammar

***File Extension***
* White programs are written in files with the .wt extension

***Statements***
* 	A program consists of at least one statement.
*	A statement can be one of the following: 
       - Variable assignments
	   - Constant definitions
	   - I f-else conditions
	   - Loops (for, do-while)
	   - Commands like print, exit, or input

***Commands***
*  Printing:
   - print(expression) is used to display output.
*	Exiting:
    - The exit command terminates the program.
*	Taking Input:
    - input(identifier) is used to take user input.

***Variables and Constants***
* 	Variables are assigned using = and can store different data types.
*	Constants are defined using the const keyword.

*Data Types:*
   -	Boolean: true, false
   -   Integer: 123
   -   Float: 3.14
   -   Character: 'a'
   -  String: "Hello"
   -  Identifiers: Variable names must start with a letter and can contain letters, numbers, and underscores

***Functions***
*	Functions are defined using the func keyword and can take parameters.

***Expressions and Operators***

* Arithmetic operations:
    -	Addition (+), Subtraction (-), Multiplication (*), Division (/)
    -	Modulo (%), Exponentiation (**)

***Conditions and Comparisons***
* 	Comparison Operators: <, >, ==, !=, <=, >=
*	Logical Operators: &&, ||, !

***Control Flow***
* If-Else Statement
  - if (x > 0) {
    print("Positive number");
} else {
    print("Negative number");
}

* For Loop
  -     A for loop consists of initialization, condition, and increment parts separated by:
  for (i = 0 : i < 10 : i + 1) {
    print(i);
}
* Do-While Loop
  -  do {
    print("Executing...");
} while (x < 5);

***Comments***
* •	Comments are written between ~ symbols.

***Running a White Program***
*      To compile and run a White program, use the following command:
make ./exampleprog < example.wt 











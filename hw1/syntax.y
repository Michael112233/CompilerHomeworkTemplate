%locations

%{
    #include<stdio.h>
    #include<stdarg.h>
    #include "lex.yy.c"
    Node* root = NULL;
    Node** package(int childNum, Node* child1, ...);
    void yyerror(char* msg);
    int synError = 0; 
    int check[100000] = {0};  
%}

/* declare types and match methods */



%%
Program : ;

ExtDefList : 

ExtDef : ;

ExtDecList : ;

Specifier : ;

StructSpecifier : ;

OptTag : ;

Tag : ;

VarDec : ;

FunDec : ;

VarList : ;

ParamDec : ;

DefList : ;

Def : ;

DecList : ;

Dec : ;

Exp : ;

Args : ;

CompSt : ;

StmtList : ;

Stmt : ;

%%

Node** package(int childNum, Node* child1, ...) {
    va_list ap;
    va_start(ap, child1);
    Node** children = (Node**)malloc(sizeof(Node*) * childNum);
    children[0] = child1;
    for(int i=1; i<childNum; i++) 
        children[i] = va_arg(ap, Node*);
    return children;
}

void yyerror(char* msg) {
    if(msg == "" || check[yylineno] == 1)
	return;
    synError++;
    fprintf(stderr, "Error type B at symbol %s at line %d: %s\n", yytext, yylineno, msg);
    check[yylineno] = 1;
}   
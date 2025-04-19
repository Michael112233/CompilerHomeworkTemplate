%option yylineno

%{
    #include<stdio.h>
    #include<stdlib.h>  
    #include<string.h> 
    #include "tree.h"
    #define YYSTYPE Node*
    #include "syntax.tab.h"
    int cnt = 0; 
    int lexError = 0;
    int yycolumn = 1;
    #define YY_USER_ACTION \
    	yylloc.first_line = yylloc.last_line = yylineno; \
    	yylloc.first_column = yycolumn; \
    	yylloc.last_column = yycolumn + yyleng - 1; \
    	yycolumn = yycolumn + yyleng; 
    int oct2int(char* num);
    int hex2int(char* num);
    int string2int(char* num);
%}

 // int类型


 // float类型


 // 标识符


 // 各种符号


%%

 // 符号处理

 // 字段处理

. { 
    // 检测到词法错误？
}

%%
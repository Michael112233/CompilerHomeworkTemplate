#include<stdio.h>
#include<string.h>

typedef enum {
    /*
        定义语法树的节点类型
    */
} NodeType;

typedef struct Node_d {
    char* name;
    NodeType nodeType;
    int lineno;
    union {
        char strVal[32];
        int intVal;
        double floatVal;
    };
    int childNum;
    struct Node_d** children;
} Node;

Node* createNode(char* name, NodeType nodeType, int lineno, int childNum, Node** children);
void printNode(Node* root, int depth);
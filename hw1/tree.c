#include "tree.h"
#include <stdlib.h>

Node* createNode(char* name, NodeType nodeType, int lineno, int childNum, Node** children) {
    /*
        生成语法生成树的节点
        name: 节点的名字
        nodeType: 节点类型
        lineno: 节点行数
        children & childNum: 节点的子节点 和 子节点个数
    */
}

void printTree(Node* root, int depth) {
    /*
        输出语法生成树
    */
}
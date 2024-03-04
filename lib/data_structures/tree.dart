import 'node.dart';
import 'tree_methods/add_node.dart';
import 'tree_methods/find_node.dart';
import 'tree_methods/print_node.dart';
import 'tree_methods/tree_hight.dart';

class Tree {
  Node? raiz = null;

  void add_node(int d) {
    raiz = addNode(raiz, d);
  }

  int tree_height() {
    return treeHeight(raiz);
  }

  String? find_node(int d) {
    return findNode(raiz, d);
  }

  void print_node() {
    printNode(raiz, "");
  }
}

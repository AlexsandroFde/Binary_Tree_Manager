import 'node.dart';
import 'tree_methods/add_node.dart';
import 'tree_methods/find_node.dart';
import 'tree_methods/tree_hight.dart';

class Tree {
  Node raiz = Node(dado: 0);

  void add(int d) {
    if (raiz.dado == 0) {
      raiz = Node(dado: d);
    } else {
      addNode(raiz, d);
    }
  }

  int tree_height() {
    return treeHeight(raiz);
  }

  String? find_node(int d) {
    if (raiz.dado == d) return "";
    String? coordenadas = findNode(raiz, d);
    return coordenadas;
  }
}
import '../data_structures/node.dart';
import '../data_structures/tree_methods/add_node.dart';

class Tree {
  Node raiz = Node(dado: 0);

  void add(int d) {
    if (raiz.dado == 0) {
      raiz = Node(dado: d);
    } else {
      addNode(raiz, d);
    }
  }
}
class Node {
  Node({required this.dado});

  Node? esq;
  Node? dir;
  int dado;
}

class NodeAux {
  NodeAux({this.node});
  
  Node? node;
}
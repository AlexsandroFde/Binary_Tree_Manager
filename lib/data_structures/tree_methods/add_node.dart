  import '../node.dart';

void addNode(Node node, int d) {
  if (d <= node.dado) {
    if (node.esq == null) {
      node.esq = Node(dado: d);
    } else {
      addNode(node.esq!, d);
    }
  } else {
    if (node.dir == null) {
      node.dir = Node(dado: d);
    } else {
      addNode(node.dir!, d);
    }
  }
}
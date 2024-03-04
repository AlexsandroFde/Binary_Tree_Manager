import '../node.dart';

Node? addNode(Node? node, int d) {
  if (node == null) return Node(dado: d);

  if (d < node.dado) {
    node.esq = addNode(node.esq, d);
  } else if (d > node.dado) {
    node.dir = addNode(node.dir, d);
  }

  return node;
}

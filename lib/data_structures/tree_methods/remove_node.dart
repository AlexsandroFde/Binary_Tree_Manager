import '../node.dart';

NodeAux? removeNode(Node? node, int d) {
  if (node == null) {
    return null;
  }

  if (d < node.dado) {
    var leftResult = removeNode(node.esq, d);
    if (leftResult != null) {
      node.esq = leftResult.node;
      return NodeAux(node: node);
    }
  } else if (d > node.dado) {
    var rightResult = removeNode(node.dir, d);
    if (rightResult != null) {
      node.dir = rightResult.node;
      return NodeAux(node: node);
    }
  } else {
    if (node.esq == null && node.dir == null) {
      return NodeAux(node: null);
    } else if (node.esq == null) {
      return NodeAux(node: node.dir);
    } else if (node.dir == null) {
      return NodeAux(node: node.esq);
    } else {
      var substitute = findSubstitute(node.dir!);
      node.dado = substitute!.dado;
      var removeResult = removeNode(node.dir, substitute.dado);
      if (removeResult != null) {
        node.dir = removeResult.node;
        return NodeAux(node: node);
      }
    }
  }
  return null;
}

 Node? findSubstitute(Node node) {
    Node current = node;
    while (current.esq != null) {
      current = current.esq!;
    }
    return current;
  }
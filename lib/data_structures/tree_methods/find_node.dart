  import '../node.dart';

String? findNode(Node? node, int d) {
  if (node == null) return null;

  if (d == node.dado) return "";

  String? nodeResult;
  if (d < node.dado) {
    nodeResult = findNode(node.esq, d);
    if (nodeResult != null) return "0" + nodeResult;
  } else {
    nodeResult = findNode(node.dir, d);
    if (nodeResult != null) return "1" + nodeResult;
  }

  return null;
}
import '../node.dart';

void printNode(Node? node, String prefixo) {
  if (node == null) return;
  printNode(node.dir, "$prefixo    |");
  print(prefixo + "---" + "[${node.dado.toString()}]");
  printNode(node.esq, "$prefixo    |");
}
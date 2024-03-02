import '../node.dart';

void printNode(Node? node, int nivel, String prefixo) {
  if (node == null) return;
  printNode(node.dir, nivel + 1, "$prefixo    |");
  print(prefixo + "---" + "[${node.dado.toString()}]");
  printNode(node.esq, nivel + 1, "$prefixo    |");
}
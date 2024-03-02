  import '../node.dart';

int treeHeight(Node? node) {
    if (node == null) return -1;
    int ad = treeHeight(node.dir);
    int ae = treeHeight(node.esq);
    return ad > ae ? ad + 1 : ae + 1;
  }
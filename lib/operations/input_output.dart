import 'dart:io';

import '../data_structures/tree.dart';

String prompt(String promptText) {
  stdout.write(promptText);
  return stdin.readLineSync()!;
}

int promptInt(String promptText) {
  while (true) {
    try {
      return int.parse(prompt(promptText));
    } catch (_) {
      stdout.write('\x1B[1F\x1B[2K\x1B[1F\x1B[2K');
      print("Por favor, insira um número válido");
    }
  }
}

void clearConsole() {
  if (Platform.isWindows) {
    stdout.write('\x1B[2J\x1B[0f');
  } else {
    stdout.write('\x1B[2J\x1B[3J\x1B[H');
  }
}

void treeInterface(Tree tree) {
  if (tree.raiz?.dado != null) {
    tree.print_node();
    print("Altura da árvore: ${tree.tree_height()}");
  }
  print("==================\n");
}
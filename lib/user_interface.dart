import 'dart:io';

import 'data_structures/tree.dart';
import 'operations/input_output.dart';

void userInterface() {
  Tree tree = Tree();

  clearConsole();

  while (true) {
    print(">=~~=< Menu >=~~=<");
    print("1. Adicionar valor");
    print("2. Remover valor");
    print("3. Buscar nó");
    print("4. Sair");
    treeInterface(tree);

    var choice = promptInt("Escolha uma opção: ");

    switch (choice) {
      case 1:
        clearConsole();
        print(">=~~=< Adicionar valor >=~~=<");
        treeInterface(tree);
        do {
          var input =
              prompt("Digite o valor a ser adicionado ('q' para parar): ");
          if (input.toLowerCase() == 'q') {
            clearConsole();
            break;
          }
          var value = int.tryParse(input);
          if (value == null) {
            stdout.write('\x1B[1F\x1B[2K\x1B[1F\x1B[2K');
            print("Por favor, insira um número válido ou 'q' para parar");
            continue;
          }
          clearConsole();
          tree.add_node(value);
          print(">=~~=< Adicionar valor >=~~=<");
          print("$value adicionado com sucesso");
          treeInterface(tree);
        } while (true);
        break;
      case 2:
        clearConsole();
        print(">=~~=< Remover valor >=~~=<");
        treeInterface(tree);
        do {
          var input =
              prompt("Digite o valor a ser removido ('q' para parar): ");
          if (input.toLowerCase() == 'q') {
            clearConsole();
            break;
          }
          var value = int.tryParse(input);
          if (value == null) {
            stdout.write('\x1B[1F\x1B[2K\x1B[1F\x1B[2K');
            print("Por favor, insira um número válido ou 'q' para parar");
            continue;
          }
          if (tree.remove_node(value)) {
            print("Valor $value removido com sucesso\n");
          } else {
            print("Valor $value não encontrado na árvore\n");
          }
          clearConsole();
          print(">=~~=< Remover valor >=~~=<");
          print("$value removido com sucesso");
          treeInterface(tree);
        } while (true);
        break;
      case 3:
        clearConsole();
        print(">=~~=< Buscar nó >=~~=<");
        treeInterface(tree);
        do {
          var input =
              prompt("Digite o valor do nó a ser buscado ('q' para parar): ");
          if (input.toLowerCase() == 'q') {
            clearConsole();
            break;
          }
          var value = int.tryParse(input);
          if (value == null) {
            stdout.write('\x1B[1F\x1B[2K\x1B[1F\x1B[2K');
            print("Por favor, insira um número válido ou 'q' para parar");
            continue;
          }
          var coordenadas = tree.find_node(value);
          clearConsole();
          print(">=~~=< Buscar nó >=~~=<");
          if (coordenadas != null) {
            print("O nó com valor $value" +
                (coordenadas.isEmpty
                    ? " é a raiz"
                    : " foi encontrado nas coordenadas: $coordenadas (0 = esq, 1 = dir)"));
          } else {
            print("O nó com valor $value não foi encontrado na árvore");
          }
          treeInterface(tree);
        } while (true);
        break;
      case 4:
        clearConsole();
        print("Saindo...");
        return;
      default:
        clearConsole();
        print("Opção inválida. Por favor, escolha uma opção válida");
    }
  }
}

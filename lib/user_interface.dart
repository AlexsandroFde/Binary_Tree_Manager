import 'data_structures/tree.dart';
import 'operations/input_output.dart';

void userInterface() {
  Tree tree = Tree();

  clearConsole();

  while (true) {
    print(tree.raiz.dado != 0
        ? "Altura da árvore: ${tree.tree_height()}\n"
        : "");
    print("=== Menu ===");
    print("1. Adicionar valor");
    print("2. Imprimir árvore");
    print("3. Buscar nó");
    print("4. Sair");

    var choice = promptInt("Escolha uma opção: ");

    switch (choice) {
      case 1:
        do {
          var input =
              prompt("Digite o valor a ser adicionado ('q' para parar): ");
          clearConsole();
          if (input.toLowerCase() == 'q') break;
          var value = int.tryParse(input);
          if (value == null) {
            print("Por favor, insira um número válido ou 'q' para parar");
            continue;
          }
          tree.add_node(value);
          print("$value adicionado com sucesso");
        } while (true);
        break;
      case 2:
        clearConsole();
        if (tree.raiz.dado != 0) {
          tree.print_node();
        } else {
          print("Árvore vazia. Nada para imprimir");
        }
        break;
      case 3:
        var value = promptInt("Digite o valor do nó a ser buscado: ");
        var coordenadas = tree.find_node(value);
        clearConsole();
        if (coordenadas != null) {
          print("O nó com valor $value" +
              (coordenadas.isEmpty
                  ? " é a raiz"
                  : " foi encontrado nas coordenadas: $coordenadas"));
        } else {
          print("O nó com valor $value não foi encontrado na árvore");
        }
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
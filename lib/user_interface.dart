import 'data_structures/tree.dart';
import 'operations/input_output.dart';

void userInterface() {
  Tree tree = Tree();
  String coordenadasNo = "";

  clearConsole();

  while (true) {
    print(">=~~=< Menu >=~~=<");
    print("1. Adicionar valor");
    print("2. Remover valor");
    print("3. Buscar nó");
    print("4. Sair");
    coordenadasNo.isNotEmpty ? print(coordenadasNo) : null;
    coordenadasNo = "";
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
          clearConsole();
          if (input.toLowerCase() == 'q') break;
          var value = int.tryParse(input);
          if (value == null) {
            print("Por favor, insira um número válido ou 'q' para parar\n");
            continue;
          }
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
          clearConsole();
          if (input.toLowerCase() == 'q') break;
          var value = int.tryParse(input);
          if (value == null) {
            print("Por favor, insira um número válido ou 'q' para parar\n");
            continue;
          }
          //função de remoção
          print(">=~~=< Remover valor >=~~=<");
          print("$value removido com sucesso");
          treeInterface(tree);
        } while (true);
        break;
      case 3:
        clearConsole();
        print(">=~~=< Buscar nó >=~~=<");
        treeInterface(tree);
        var value = promptInt("Digite o valor do nó a ser buscado: ");
        var coordenadas = tree.find_node(value);
        clearConsole();
        if (coordenadas != null) {
          coordenadasNo = "O nó com valor $value" +
              (coordenadas.isEmpty
                  ? " é a raiz"
                  : " foi encontrado nas coordenadas: $coordenadas (0 = esq, 1 = dir)");
        } else {
          coordenadasNo = "O nó com valor $value não foi encontrado na árvore";
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

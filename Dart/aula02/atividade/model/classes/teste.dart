import 'package:dart_console/dart_console.dart';

void main() {
  final console = Console();
  final options = ['Opção 1', 'Opção 2', 'Opção 3', 'Sair'];
  int selectedIndex = 0;

  while (true) {
    console.clearScreen();
    console.setForegroundColor(ConsoleColor.brightYellow);
    console.writeLine('Menu Interativo:');
    console.resetColorAttributes();

    for (var i = 0; i < options.length; i++) {
      if (i == selectedIndex) {
        console.setForegroundColor(ConsoleColor.brightGreen);
        console.writeLine('> ${options[i]}');
        console.resetColorAttributes();
      } else {
        console.writeLine('  ${options[i]}');
      }
    }

    final key = console.readKey();

    if (key.controlChar == ControlCharacter.arrowDown) {
      if (selectedIndex < options.length - 1) {
        selectedIndex++;
      }
    } else if (key.controlChar == ControlCharacter.arrowUp) {
      if (selectedIndex > 0) {
        selectedIndex--;
      }
    } else if (key.controlChar == ControlCharacter.enter) {
      console.clearScreen();
      console.writeLine('Você selecionou: ${options[selectedIndex]}');

      if (options[selectedIndex] == 'Sair') {
        break;
      } else {
        console.writeLine('Pressione qualquer tecla para continuar...');
        console.readKey();
      }
    }
  }

  console.clearScreen();
  console.writeLine('Programa encerrado.');
}

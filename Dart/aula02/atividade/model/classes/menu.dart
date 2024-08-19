import 'package:dart_console/dart_console.dart';

import 'personagem.dart';
import 'item.dart';

class Menu {
  Personagem? personagemDoJogador = null;
  final console = Console();
  final opcoesMenuInicial = ['Iniciar', 'Sair'];
  final opcoesDeClasse = ['Guerreiro', 'Arqueiro', 'Mago', 'Paladino'];
  final opcoesDeItens = ['Arco', 'Escudo', 'Espada', 'Lança', 'Finalizar'];
  int indexSelecionado = 0;
  bool estadoDeComponenteNulo = false;

  Personagem? iniciarJogo() {
    while (true) {
      console.clearScreen();
      console.setForegroundColor(ConsoleColor.brightBlue);
      console.writeLine('MENU PRINCIPAL:');
      console.resetColorAttributes();
      if (estadoDeComponenteNulo) {
        console.setForegroundColor(ConsoleColor.brightRed);
        console.writeLine(
            '• Alguma característica do personagem não foi definida!');
        console.resetColorAttributes();
        estadoDeComponenteNulo = false;
      }

      for (int i = 0; i < this.opcoesMenuInicial.length; i++) {
        if (indexSelecionado == i) {
          console.setForegroundColor(ConsoleColor.brightWhite);
          console.writeLine('> ${this.opcoesMenuInicial[i]}');
          console.resetColorAttributes();
        } else {
          console.writeLine('  ${this.opcoesMenuInicial[i]}');
        }
      }

      final key = console.readKey();

      if (key.controlChar == ControlCharacter.arrowDown) {
        if (indexSelecionado < opcoesMenuInicial.length - 1) {
          indexSelecionado++;
        }
      } else if (key.controlChar == ControlCharacter.arrowUp) {
        if (indexSelecionado > 0) {
          indexSelecionado--;
        }
      } else if (key.controlChar == ControlCharacter.enter) {
        Personagem? personagemDoJogador;

        if (opcoesMenuInicial[indexSelecionado] == 'Sair') {
          break;
        } else {
          personagemDoJogador = criarPersonagem();
        }

        return personagemDoJogador;
      }
    }
  }

  Personagem? criarPersonagem() {
    console.clearScreen();
    console.setForegroundColor(ConsoleColor.brightBlue);
    console.writeLine('Criação de personagem (Nomeie seu personagem):');
    String? nomePersonagem = this.nomearPersonagem();
    String? classePersonagem = this.escolherClasse();
    List<Item>? itensPersonagem = this.escolherItens();
    personagemDoJogador = Personagem(
        nomeClasse: classePersonagem,
        nomePersonagem: nomePersonagem,
        equipamentos: itensPersonagem);

    if (personagemDoJogador == null) {
      estadoDeComponenteNulo = true;
      iniciarJogo();
    }

    return personagemDoJogador;
  }

  String? nomearPersonagem() {
    console.setForegroundColor(ConsoleColor.brightWhite);
    console.write('Nome do personagem: ');
    console.resetColorAttributes();
    String? nomePersonagem = console.readLine();
    return nomePersonagem;
  }

  String? escolherClasse() {
    while (true) {
      console.clearScreen();
      console.setForegroundColor(ConsoleColor.brightBlue);
      console.writeLine('Criação de personagem (Escolha sua classe):');
      console.resetColorAttributes();
      for (int i = 0; i < this.opcoesDeClasse.length; i++) {
        if (indexSelecionado == i) {
          console.setForegroundColor(ConsoleColor.brightWhite);
          console.writeLine("> ${this.opcoesDeClasse[i]}");
          console.resetColorAttributes();
        } else {
          console.writeLine("  ${this.opcoesDeClasse[i]}");
        }
      }

      final key = console.readKey();

      if (key.controlChar == ControlCharacter.arrowDown) {
        if (indexSelecionado < opcoesDeClasse.length - 1) {
          indexSelecionado++;
        }
      } else if (key.controlChar == ControlCharacter.arrowUp) {
        if (indexSelecionado > 0) {
          indexSelecionado--;
        }
      } else if (key.controlChar == ControlCharacter.enter) {
        if (opcoesDeClasse[indexSelecionado] == 'Guerreiro') {
          return 'Guerreiro';
        } else if (opcoesDeClasse[indexSelecionado] == 'Arqueiro') {
          return 'Arqueiro';
        } else if (opcoesDeClasse[indexSelecionado] == 'Mago') {
          return 'Mago';
        } else if (opcoesDeClasse[indexSelecionado] == 'Paladino') {
          return 'Paladino';
        } else {
          return 'N/a';
        }
      }
    }
  }

  List<Item> escolherItens() {
    while (true) {
      console.clearScreen();
      console.setForegroundColor(ConsoleColor.brightBlue);
      console.writeLine('Criação de personagem (Escolha seus itens):');
      console.resetColorAttributes();
      console.setForegroundColor(ConsoleColor.brightGreen);
      console.writeLine('(Você pode pegar um escudo como item extra)');
      console.resetColorAttributes();
      for (int i = 0; i < this.opcoesDeItens.length; i++) {
        if (indexSelecionado == i &&
            opcoesDeItens[indexSelecionado] == 'Finalizar') {
          console.setForegroundColor(ConsoleColor.brightRed);
          console.writeLine("> ${this.opcoesDeItens[i]}");
          console.resetColorAttributes();
        } else if (indexSelecionado == i) {
          console.setForegroundColor(ConsoleColor.brightWhite);
          console.writeLine("> ${this.opcoesDeItens[i]}");
          console.resetColorAttributes();
        } else {
          console.writeLine("  ${this.opcoesDeItens[i]}");
        }
      }

      final key = console.readKey();
      List<Item> itens = [];

      if (key.controlChar == ControlCharacter.arrowDown) {
        if (indexSelecionado < opcoesDeItens.length - 1) {
          indexSelecionado++;
        }
      } else if (key.controlChar == ControlCharacter.arrowUp) {
        if (indexSelecionado > 0) {
          indexSelecionado--;
        }
      } else if (key.controlChar == ControlCharacter.enter) {
        if (opcoesDeItens[indexSelecionado] == 'Arco') {
          Item arco = Item(nome: 'Arco');
          itens.insert(0, arco);
        } else if (opcoesDeItens[indexSelecionado] == 'Escudo') {
          Item escudo = Item(nome: 'Escudo');
          itens.add(escudo);
        } else if (opcoesDeItens[indexSelecionado] == 'Espada') {
          Item espada = Item(nome: 'Espada');
          itens.insert(0, espada);
        } else if (opcoesDeItens[indexSelecionado] == 'Lança') {
          Item lanca = Item(nome: 'Lança');
          itens.insert(0, lanca);
        } else if (opcoesDeItens[indexSelecionado] == 'Finalizar') {
          if (itens.length > 2) {
            return [itens[0], itens[1]];
          } else {
            return itens;
          }
        }
      }
    }
  }
}

import 'package:dart_console/dart_console.dart';

import 'personagem.dart';
import 'item.dart';

class Menu {
  Personagem? personagemDoJogador = null;
  final console = Console();
  final opcoesMenuInicial = ['Iniciar', 'Sair'];
  final opcoesDeClasse = ['Guerreiro', 'Arqueiro', 'Mago', 'Paladino'];
  final opcoesDeItens = ['Arco', 'Escudo', 'Espada', 'Lança'];
  final opcoesStatus = ['Continuar'];
  final opcoesInicioCombate = ['Lutar!', 'Fugir...'];
  final opcoesCombate = [
    'Ataque leve',
    'Ataque pesado',
    'Ataque especial',
    'Defender',
    'Recomeçar'
  ];
  int indexSelecionado = 0;
  bool estadoDeComponenteNulo = false;

  Personagem? iniciarJogo() {
    while (true) {
      console.clearScreen();
      console.setForegroundColor(ConsoleColor.brightBlue);
      console.writeLine('MENU PRINCIPAL:');
      console.resetColorAttributes();
      for (int i = 0; i < this.opcoesMenuInicial.length; i++) {
        if (indexSelecionado == i) {
          console.setForegroundColor(ConsoleColor.brightWhite);
          console.writeLine('> ${this.opcoesMenuInicial[i]}');
          console.resetColorAttributes();
        } else {
          console.writeLine('  ${this.opcoesMenuInicial[i]}');
        }
      }

      final key1 = console.readKey();

      if (key1.controlChar == ControlCharacter.arrowDown) {
        if (indexSelecionado < opcoesMenuInicial.length - 1) {
          indexSelecionado++;
        }
      } else if (key1.controlChar == ControlCharacter.arrowUp) {
        if (indexSelecionado > 0) {
          indexSelecionado--;
        }
      } else if (key1.controlChar == ControlCharacter.enter) {
        if (opcoesMenuInicial[indexSelecionado] == 'Sair') {
          return null;
        }
        this.personagemDoJogador = criarPersonagem();
        this.statusPersonagem();
        this.statusItens();
        return personagemDoJogador;
      }
    }
  }

  Personagem? criarPersonagem() {
    console.clearScreen();
    console.setForegroundColor(ConsoleColor.brightBlue);
    console.writeLine('Criação de personagem (Nomeie seu personagem):');
    String? nomePersonagem = this.nomearPersonagem();
    if (nomePersonagem == null) {
      estadoDeComponenteNulo = true;
      return null;
    }
    String? classePersonagem = this.escolherClasse();
    Item item1 = this.escolherItens();
    Item item2 = this.escolherItens();

    this.personagemDoJogador = Personagem(
        nomeClasse: classePersonagem,
        nomePersonagem: nomePersonagem,
        equipamentos: [item1, item2]);

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

      final key2 = console.readKey();

      if (key2.controlChar == ControlCharacter.arrowDown) {
        if (indexSelecionado < opcoesDeClasse.length - 1) {
          indexSelecionado++;
        }
      } else if (key2.controlChar == ControlCharacter.arrowUp) {
        if (indexSelecionado > 0) {
          indexSelecionado--;
        }
      } else if (key2.controlChar == ControlCharacter.enter) {
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

  Item escolherItens() {
    while (true) {
      console.clearScreen();
      console.setForegroundColor(ConsoleColor.brightBlue);
      console.writeLine('Criação de personagem (Escolha seus itens):');
      console.resetColorAttributes();
      console.setForegroundColor(ConsoleColor.brightGreen);
      console.writeLine('(Você pode pegar um escudo como item extra)');
      console.resetColorAttributes();
      for (int i = 0; i < this.opcoesDeItens.length; i++) {
        if (indexSelecionado == i) {
          console.setForegroundColor(ConsoleColor.brightWhite);
          console.writeLine("> ${this.opcoesDeItens[i]}");
          console.resetColorAttributes();
        } else {
          console.writeLine("  ${this.opcoesDeItens[i]}");
        }
      }

      final key3 = console.readKey();

      if (key3.controlChar == ControlCharacter.arrowDown) {
        if (indexSelecionado < opcoesDeItens.length - 1) {
          indexSelecionado++;
        }
      } else if (key3.controlChar == ControlCharacter.arrowUp) {
        if (indexSelecionado > 0) {
          indexSelecionado--;
        }
      } else if (key3.controlChar == ControlCharacter.enter) {
        if (opcoesDeItens[indexSelecionado] == 'Arco') {
          Item arco = Item(nome: 'Arco');
          return arco;
        } else if (opcoesDeItens[indexSelecionado] == 'Escudo') {
          Item escudo = Item(nome: 'Escudo');
          return escudo;
        } else if (opcoesDeItens[indexSelecionado] == 'Espada') {
          Item espada = Item(nome: 'Espada');
          return espada;
        } else if (opcoesDeItens[indexSelecionado] == 'Lança') {
          Item lanca = Item(nome: 'Lança');
          return lanca;
        }
      }
    }
  }

  void statusPersonagem() {
    console.clearScreen();
    console.setForegroundColor(ConsoleColor.brightBlue);
    console.writeLine('Status do personagem:');
    console.resetColorAttributes();
    console.setForegroundColor(ConsoleColor.brightGreen);
    console.writeLine('Nome: ${this.personagemDoJogador!.getNome}');
    console.writeLine('Classe: ${this.personagemDoJogador!.getNomeClasse}');
    console.writeLine('Vida: ${this.personagemDoJogador!.getVida}');
    console.writeLine('Ataque: ${this.personagemDoJogador!.getAtaque}');
    console.writeLine('Defesa: ${this.personagemDoJogador!.getDefesa}');
    console.writeLine('Nível: ${this.personagemDoJogador!.getNivel}');
    console.writeLine(
        'Equipamentos: ${this.personagemDoJogador!.getEquipamentos[0].getNome} | ${this.personagemDoJogador!.getEquipamentos[1].getNome}');
    console.resetColorAttributes();
    console.writeLine('');

    indexSelecionado = 0;

    for (int i = 0; i < this.opcoesStatus.length; i++) {
      if (indexSelecionado == i) {
        console.setForegroundColor(ConsoleColor.brightWhite);
        console.writeLine("> ${this.opcoesStatus[i]}");
        console.resetColorAttributes();
      } else {
        console.writeLine("  ${this.opcoesStatus[i]}");
      }
    }

    final key4 = console.readKey();

    if (key4.controlChar == ControlCharacter.enter) {
      return;
    }
  }

  void statusItens() {
    console.clearScreen();
    console.setForegroundColor(ConsoleColor.brightBlue);
    console.writeLine('Status dos itens:');
    console.resetColorAttributes();
    for (int i = 0; i < this.personagemDoJogador!.getEquipamentos.length; i++) {
      console.setForegroundColor(ConsoleColor.brightGreen);
      console.writeLine(
          'Nome: ${this.personagemDoJogador!.getEquipamentos[i].getNome}');
      console.writeLine(
          'Dano: ${this.personagemDoJogador!.getEquipamentos[i].getDano}');
      console.writeLine(
          'Durabilidade: ${this.personagemDoJogador!.getEquipamentos[i].getDurabilidade}');
      console.writeLine(
          'Defesa: ${this.personagemDoJogador!.getEquipamentos[i].getDefesa}');
      console.writeLine(
          'Alcance: ${this.personagemDoJogador!.getEquipamentos[i].getAlcance}');
      console.resetColorAttributes();
      console.writeLine('');
    }

    indexSelecionado = 0;

    for (int i = 0; i < this.opcoesStatus.length; i++) {
      if (indexSelecionado == i) {
        console.setForegroundColor(ConsoleColor.brightWhite);
        console.writeLine("> ${this.opcoesStatus[i]}");
        console.resetColorAttributes();
      } else {
        console.writeLine("  ${this.opcoesStatus[i]}");
      }
    }

    final key5 = console.readKey();

    if (key5.controlChar == ControlCharacter.enter) {
      return;
    }
  }
}

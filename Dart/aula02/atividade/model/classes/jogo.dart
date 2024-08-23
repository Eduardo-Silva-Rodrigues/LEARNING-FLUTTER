import 'package:dart_console/dart_console.dart';

import 'dart:math';

import 'item.dart';
import 'menu.dart';
import 'personagem.dart';

class Jogo extends Menu {
  final random = Random();
  List<String> nomesInimigos = [
    'Crowrie',
    'Fastceobeo',
    'Waldfer',
    'Ric',
    'Nina',
    'Sunghal',
    'Anda',
    'Laclac',
    'Ry',
    'Sylgar'
  ];
  Personagem? personagemInimigo;
  Personagem? personagemJogador;

  void set setPersonagemJogador(Personagem? personagemJogador) =>
      this.personagemJogador = personagemJogador;

  void iniciarCombate() {
    criarInimigo();

    while (true) {
      if (personagemInimigo!.getEquipamentos.length == 2 &&
          personagemInimigo!.getEquipamentos[0].getNome ==
              personagemInimigo!.getEquipamentos[1].getNome) {
        console.clearScreen();
        console.setForegroundColor(ConsoleColor.brightRed);
        console.writeLine(
            'Você encontrou um ${personagemInimigo!.getNomeClasse} chamado ${personagemInimigo!.getNome},');
        console.writeLine(
            'ele possui 2x ${personagemInimigo!.getEquipamentos[0].getNome}s. Cuidado!');
        console.resetColorAttributes();
      } else {
        console.clearScreen();
        console.setForegroundColor(ConsoleColor.brightRed);
        console.writeLine(
            'Você encontrou um ${personagemInimigo!.getNomeClasse} chamado ${personagemInimigo!.getNome},');
        console.writeLine(
            'ele possui um(a) ${personagemInimigo!.getEquipamentos[0].getNome} e um(a) ${personagemInimigo!.getEquipamentos[1].getNome}. Cuidado!');
        console.resetColorAttributes();
      }

      console.setForegroundColor(ConsoleColor.brightBlue);
      console.writeLine('');
      console.writeLine('O que você fará?');
      console.writeLine('');
      console.resetColorAttributes();

      for (int i = 0; i < this.opcoesInicioCombate.length; i++) {
        if (indexSelecionado == i) {
          console.setForegroundColor(ConsoleColor.brightWhite);
          console.writeLine('> ${this.opcoesInicioCombate[i]}');
          console.resetColorAttributes();
        } else {
          console.writeLine('  ${this.opcoesInicioCombate[i]}');
        }
      }

      final key1 = console.readKey();

      if (key1.controlChar == ControlCharacter.arrowDown) {
        if (indexSelecionado < opcoesInicioCombate.length - 1) {
          indexSelecionado++;
        }
      } else if (key1.controlChar == ControlCharacter.arrowUp) {
        if (indexSelecionado > 0) {
          indexSelecionado--;
        }
      } else if (key1.controlChar == ControlCharacter.enter) {
        if (opcoesInicioCombate[indexSelecionado] == 'Lutar!') {
          combate();
        } else {
          break;
        }
      }
    }
  }

  void criarInimigo() {
    int indexAleatorioClasse = random.nextInt(opcoesDeClasse.length);
    int indexAleatorioNome = random.nextInt(nomesInimigos.length);
    int indexAleatorioItem1 = random.nextInt(opcoesDeItens.length);
    int indexAleatorioItem2 = random.nextInt(opcoesDeItens.length);

    personagemInimigo = Personagem(
        nomeClasse: opcoesDeClasse[indexAleatorioClasse],
        nomePersonagem: nomesInimigos[indexAleatorioNome],
        equipamentos: [
          Item(nome: opcoesDeItens[indexAleatorioItem1]),
          Item(nome: opcoesDeItens[indexAleatorioItem2])
        ]);

    this.personagemInimigo = personagemInimigo;
  }

  void combate() {
    while (true) {
      console.clearScreen();
      console.setForegroundColor(ConsoleColor.brightRed);
      console.writeLine('');
      console.writeLine(
          '${personagemInimigo!.getNome}, ${personagemInimigo!.getNomeClasse}');
      console.resetColorAttributes();
      console.setForegroundColor(ConsoleColor.brightGreen);
      console.writeLine('Vida: ${personagemInimigo!.getVida}');
      console.writeLine('Ataque: ${personagemInimigo!.getAtaque}');
      console.writeLine('Defesa: ${personagemInimigo!.getDefesa}');
      console.writeLine('');
      console.resetColorAttributes();
      console.setForegroundColor(ConsoleColor.brightRed);
      console.writeLine(
          '${personagemJogador!.getNome}, ${personagemJogador!.getNomeClasse}');
      console.resetColorAttributes();
      console.setForegroundColor(ConsoleColor.brightGreen);
      console.writeLine('Vida: ${personagemJogador!.getVida}');
      console.writeLine('Ataque: ${personagemJogador!.getAtaque}');
      console.writeLine('Defesa: ${personagemJogador!.getDefesa}');
      console.writeLine('');
      console.resetColorAttributes();

      for (int i = 0; i < this.opcoesCombate.length; i++) {
        if (indexSelecionado == i) {
          console.setForegroundColor(ConsoleColor.brightWhite);
          console.writeLine('> ${this.opcoesCombate[i]}');
          console.resetColorAttributes();
        } else {
          console.writeLine('  ${this.opcoesCombate[i]}');
        }
      }
      if (this.personagemJogador!.getVida <= 0) {
        this.verificarResultadoCombate();
        break;
      }

      final key2 = console.readKey();

      if (key2.controlChar == ControlCharacter.arrowDown) {
        if (indexSelecionado < opcoesCombate.length - 1) {
          indexSelecionado++;
        }
      } else if (key2.controlChar == ControlCharacter.arrowUp) {
        if (indexSelecionado > 0) {
          indexSelecionado--;
        }
      } else if (key2.controlChar == ControlCharacter.enter) {
        if (opcoesCombate[indexSelecionado] == 'Ataque leve') {
          this.personagemJogador!.ataqueLeve(personagemInimigo);
          this.ataqueInimigo(personagemJogador);
        } else if (opcoesCombate[indexSelecionado] == 'Ataque pesado') {
          this.personagemJogador!.ataquePesado(personagemInimigo!);
          this.ataqueInimigo(personagemJogador);
        } else if (opcoesCombate[indexSelecionado] == 'Ataque especial') {
          this.personagemJogador!.ataqueEspecial(personagemInimigo!);
          this.ataqueInimigo(personagemJogador);
        } else if (opcoesCombate[indexSelecionado] == 'Defender') {
          this.personagemJogador!.defender(personagemInimigo!);
          this.ataqueInimigo(personagemJogador);
        } else if (opcoesCombate[indexSelecionado] == 'Recomeçar') {
          break;
        }
      }
    }
  }

  void ataqueInimigo(Personagem? personagemJogador) {
    int indexSkillAleatoriaInimigo = random.nextInt(4);

    switch (indexSkillAleatoriaInimigo) {
      case 0:
        this.personagemInimigo!.ataqueLeve(personagemJogador!);
        break;
      case 1:
        this.personagemInimigo!.ataquePesado(personagemJogador!);
        break;
      case 2:
        this.personagemInimigo!.ataqueEspecial(personagemJogador!);
        break;
      case 3:
        this.personagemInimigo!.defender(personagemJogador!);
        break;
    }
  }

  void verificarResultadoCombate() {
    console.clearScreen();
    console.setForegroundColor(ConsoleColor.brightMagenta);
    console.writeLine('');
    console.writeLine('');
    console.writeLine('VOCÊ PERDEU!');
    console.writeLine('');
    console.writeLine('');
    console.resetColorAttributes();
    return;
  }
}

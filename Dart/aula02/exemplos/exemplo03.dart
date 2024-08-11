import 'dart:math';

void main() {
  var nota = Random().nextInt(11);

  switch(nota) {
    case 10: 
    case 9: 
    case 8: 
    case 7: 
      print("Passou com nota: $nota");
      break;
    case 6: 
    case 5: 
    case 4:  
      print("Ficou de recuperação com nota: $nota");
      break;
    default:
      print("Reprovou com nota: $nota");
  }
}
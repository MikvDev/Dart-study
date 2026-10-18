import 'dart:convert';
import 'dart:io';

void main() {
  // ----------------------- Enums -------------------- //

  print("| ========== Calendário ============ |");
  print("Digite o numero do dia da semana:");
  var day = int.parse(stdin.readLineSync(encoding: utf8) ?? "1") ;
  
  switch (day) {
    case 1:
      print("Hoje é segunda-feira");
      print("Hoje é ${day.desc}")
      break;
    case 2:
      print("Hoje é terça-feira");
      break;
    case 3:
      print("Hoje é quarta-feira");
      break;
    case 4:
      print("Hoje é quinta-feira");
      break;
    case 5:
      print("Hoje é sexta-feira");
      break;
  }
}

// Precisa ficar fora do main
enum day_week {
  segunda(descricao: 'Segunda-feira', ordem: 1),
  terca(descricao: 'Terça-feira', ordem: 2),
  quarta(descricao: 'Quarta-feira', ordem: 3),
  quinta(descricao: 'Quinta-feira', ordem: 4),
  sexta(
    descricao: 'Sexta-feira',
    ordem: 5,
  ); // O ultimo deve terminar com ponto e virgula.

  const day_week({required this.descricao, required this.ordem});

  final String descricao;
  final int ordem;
}

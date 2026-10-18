import 'dart:convert';
import 'dart:io';

void main() {
  // Operadores
  // Em dart(ou qualquer outra linguagem) podemos usar os Operadores
  // Mais +
  // Menos -
  // Divisão /
  // Multiplicação *
  // Modulo %
  final int number_two, number_one;
  print("Digite o valor 1:");
  number_one = int.parse(stdin.readLineSync(encoding: utf8) ?? "0");
  print("Digite o valor 2:");
  number_two = int.parse(stdin.readLineSync(encoding: utf8) ?? "0");

  var calc;
  print("Digite a operação (1-5):");
  
  final op = int.parse(stdin.readLineSync(encoding: utf8) ?? "0");
  calc = switch (op) {
    1 => calc = number_one + number_two,
    2 => calc = number_one - number_two,
    3 => calc = number_one * number_two,
    4 => calc = number_one / number_two,
    5 => calc = number_one % number_two,

    _ => "Dado errado!",
  };

  
  print("Valor final:$calc");
}

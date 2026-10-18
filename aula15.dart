import 'dart:convert';
import 'dart:io';

// Estudando for in
void main() {
  List<double> grade_input() {
    var grades = <double>[];
    print("Digite a quantidade de notas:");
    var grades_number = int.parse(stdin.readLineSync(encoding: utf8) ?? "0");
    for (var i = 0; i < grades_number; i++) {
      var number;
      print("Digite sua nota ${i + 1}");
      number = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");
      grades.add(
        number,
      ); // Isso apenas adiciona os numeros a lista, não soma eles.
    }

    return grades;
  }

  double calc_avarage_grade(List<double> grades) {
    double sum = grades.reduce(
      (total, element) => total + element,
    ); // Usamos reduca para calcular a soma dos termos do array
    final double grade_avarage = sum / 4;
    return grade_avarage;
  }

  String is_aproved(grade_avarage) {
    // Operador ternário <3. Perfeição da natureza. Muito melhor que escrever um if/else, menos linhas de codigo.
    return grade_avarage >= 7
        ? "Parabens! Você foi aprovado!"
        : "Bah cara! Não foi dessa vez!";
  }

  void show_grades(List<double> grades) {
    var i = 0;
    print("================ Notas do Aluno ================");
    for (var grade in grades) {
      i++;
      // Usando for in
      print("Nota $i: $grade");
    }
  }

  var grades = grade_input();
  var grade_avarage = calc_avarage_grade(grades);
  var student_situation = is_aproved(grade_avarage);

  print("Situação do aluno: $student_situation");
  show_grades(grades);
  print("Media: $grade_avarage");
  // Dividimos em 3 funções, cada uma com um objetivo especifico, apenas uma ação.
  // Uma pega as notas e soma elas
  // Outra pega a soma e faz a media
  // A ultima  diz se o aluno passou
}

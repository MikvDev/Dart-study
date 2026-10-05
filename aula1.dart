void main() {
  print('Hello, world!');
  // ================ Aula 1 - DART - =====================
  // Declarações explicitas = Tipo \ nome \ valor
  // Tipos no dart
  // Inteiro
  int idade = 2;
  print(idade);
  // Numero com .
  double nota = 3.7;
  print(nota);
  //Boleano
  bool? aprovado;
  print(aprovado ?? false); // Operador de tratamento, se não receber valor nenhum, seta para um valor padrão.
  // Textos
  String nome = "Miguel";
  print(nome);


  // Usando var para criar variaveis implicitas
  // var \ nome \ valor
  var UserName = "Miguel";
  print(UserName);
}

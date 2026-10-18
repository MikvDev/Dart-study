void main() {
  // Podemos usar para concatenar strings a maneira sem {} ou com apenas $.
  // Com o detalhe que para objetos simples, apenas com $var é o suficiente, mas para objetos complexos, o uso de ${} é obrigatorio.

  // print('Ola $nome')
  // print('ola ${nome.isEmpty}')

  String mensage = "Hello user!";
  String user = "Miguel";

  final sb = StringBuffer();

  sb.write(mensage);
  sb.write(' ');
  sb.write(user);

  print(sb.toString()); // Crio um buffer de dados de string 
}

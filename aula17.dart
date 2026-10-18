void main() {
  // --------------- Poo --------------------------- //
  // Dart é 100% orientado a objetos
 // palavra new é opcional
  User user1 = new User(name: "Miguel", age: 19, born_year: 2007);
  user1.show_information();
}

// Criar classes sempre fora da main

// Classe User

class User {
  late String
  name; // o 'late' permite que não seja necessario atribuir nada ao atributo
  late int born_year;
  late int age;
  User({
    required this.name,
    required this.age,
    required this.born_year,
  }); // Obrigo a ser necessario passar atributos aos paremetros

  void show_information(){
    print("¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨");
    print(" | Name: $name               ");
    print(" | Age: $age                 ");
    print(" | Born Year: $born_year     ");
    print(" | Year: ${DateTime.now().year} ");
    print("¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨");
  }
}

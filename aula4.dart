void main() {
  // Em dart tudo é objeto
  // ============== Aula 4 ================ //
  // ---------- Listas e mapas ------------ //

  // Listas \ < Tipo > \ Valor
  // List é uma interface
  // Usamos const ou final para inicializar listas
  final languages = ["Ruby", "Ruby", "Java", "Java"];

  // Ex simples:
  if (languages.isNotEmpty) {
    print("Array não está vazio");
  } else {
    print("Array está vazio");
  }
  // languages.add("Ruby");
  // languages.remove("Ruby");
  print(languages);

  // ========== Map ============= // --- > é tipo um dicionário
  // dynamic, não importa o tipo dele;
  Map<String, dynamic> pessoas = {
    "Miguel": 24,
    "Kima": 23,
    "João": 34,
    "Teste": "Posso ser aleatório",
  };
  // ========= Set =============== // --- > é uma lista fixa
  Set<String> compras = {
    'Ruby',
    'Ruby',
    "Ruby",
    "Safira",
  }; // Lista sem dados repetidos
  
  print(pessoas);
  print(compras); // Vai imprimir apenas os dados não repetidos;
  print(languages.toSet()); // Metodo para retornar apenas elementos não repetidos;
}

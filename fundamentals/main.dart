void main() async {

  calculateBodyMassIndex({required num height, required int weight}) {
    return (height * height) / weight;
  }

  final myBodyMassIndex = calculateBodyMassIndex(height: 1.82, weight: 73);

  print(myBodyMassIndex);

  printMyCompleteName(String first, String last,
      {int age = 2, double height = 0}) {
    final message =
        'my name is $first $last and i have ${age} yo and ${height} height';
    return message;
  }

  final completeName = printMyCompleteName('Lucas', '', age: 22, height: 1.82);
  print(completeName);

  setFunction({required Function(int) function}) {
    return function(4);
  }

  int returnName(int value) {
    return value;
  }

  final stringName = setFunction(function: returnName);
  print(stringName);

  // ====================

    String setName({required String name}) {
    return name.length <= 3
        ? 'Campo curto, por favor preencha um nome completo'
        : name;
  }

  String nome = setName(name: 'gsl');

  print(nome);

  setNumber(num number) {
    return number;
  }

  final myNumber = setNumber(13);
  print(myNumber);

  List<String> fruits2 = ['Banana', 'Maçã', 'Laranja'];

  String entry = 'Laranjasss';

  final contains = fruits2.firstWhere((element) => element == entry);
  print(contains);

  final index = fruits2.indexOf(entry);

  print(index);


  Map<int, String> ddd = {11: 'São Paulo', 61: 'Brasília', 49: 'Campinas'};

  ddd.forEach((int key, String value) {
    print('The key is $key and the value is $value');
  });

  int length = ddd.length;
  print(length);
}


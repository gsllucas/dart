// Função principal de instancia que serve para rodar
// a aplicação em Dart, sempre é necessário chamá-la

void main() {
  integerVariables();
  doubleVariables();
  stringVariables();
  whileLoop();
  forLoop();
}

integerVariables() {
  // type annotation int
  int age = 21;
  int sistersAge = age + 6;

  print("I'm $age years old");
  print("My sister's age is $sistersAge");
}

doubleVariables() {
  // type annotation double
  double salary = 3333.33;

  print("Monthly salary is $salary");
  print("Anual salary is ${salary * 12}");
}

stringVariables() {
  String text = 'Hello World';

  print(text);
  print('$text');
}

typeAnnotations() {
  // Dart recognizes dynamically the type
  // annotation of the variable
  // but we can't change the type annotation using var
  // if we declare some other value to the variable
  var someVar = 'Some var';

  // dynamic type will recognizes type annotation
  // from any other types if the variable value changes
  // but it costs a lot to the memory computer
  dynamic someAnotherVar = 'Some another var';
  someAnotherVar = 21;

  print(someAnotherVar);
}

// LOOPS

whileLoop() {
  int counter1 = 0;
  int counter2 = 0;

  // while iterator
  while (counter1 != 10) {
    counter1++;
    print("The value's counter is $counter1");
  }

  // do while iterator
  do {
    counter2 += 2;
    print('$counter2');
  } while (counter2 < 10);
}

forLoop() {
  List<int> array = [2, 7, 8, 8, 9, 0, 7, 7];

  for (var elements in array) {
    print(elements);
  }

  int counter = 0;

  for (counter; counter <= 10; counter++) {
    print(counter);
  }
}

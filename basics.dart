// Função principal de instancia que serve para rodar
// a aplicação em Dart, sempre é necessário chamá-la

// type annotation comes first on dart

void main() {
  integerVariables();
  doubleVariables();
  stringVariables();
  whileLoop();
  forLoop();
  ifCondition();
  booleanConditions();
  switchCase();
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

  // if its necessary, we can stop loops with 'break'
}

// CONDITIONS

ifCondition() {
  int age = 17;
  if (age >= 18) {
    print('You have legal age');
  } else {
    print('You dont have legal age');
  }

  age < 18 ? print('You dont have legal age') : print('You have legal age');
}

booleanConditions() {
  bool hasCollege = true;

  if (hasCollege) {
    print('You have college');
  } else {
    print('You does not have college');
  }
}

switchCase() {
  String door = 'opened';

  switch (door) {
    case 'closed':
      print('The door is closed');
      break;
    case 'semi-opened':
      print('The door is semi-opened');
      break;
    case 'opened':
      print('The door is opened');
      break;
    default:
      print('Default state goes here');
  }
}

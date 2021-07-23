// import something
import 'dart:math';

void main() {
  print('Hello World');

  // variables
  // by default, dart recognizes type reference
  var name = 'string content';
  var integer = 2;
  var doubleNumber = 3.14;
  var integerArray = [1, 2, 3, 4, 5];
  var stringArray = ['Item 1', 'Item 2', 'Item 3'];
  var object = {
    'tags': ['saturn'],
    'url': 'http://someUrl'
  };

  // control flow statements

  print(fibonacci(20));
}

// FUNCTIONS
// recommended to specify the types of argument
// and the return value

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }

  return fibonacci(n - 1) + fibonacci(n - 2);
}

// CLASSES

class Spacecraft {
  // variables area

  late String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar
  // for assignment to members
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here
  }

  // Named constructor that forwards to the
  // default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Methods.

  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  Dog dog = Dog(name: 'Some dog name', age: 4);
  Cat cat = Cat(name: 'Some cat name', age: 3);

  List<Animal> animals = [];

  animals.add(dog);
  animals.add(dog);
  animals.add(cat);
  animals.add(dog);
  animals.add(cat);
  animals.add(cat);

  animals.forEach((animal) {
    (animal is Dog)
        ? animal.bark()
        : (animal is Cat)
            ? animal.meow()
            : null;
  });

  final animalsName = animals.map((animal) => animal.name);
  print(animalsName);

  dog.sleep();
}

abstract class Animal {
  String name;
  int age;
  double? height;
  double? weight;

  Animal({required this.name, required this.age});

  void sleep() {
    print('Slept');
  }

  void eat() {
    print('Ate');
  }

  death();
}

class Dog extends Animal {
  Dog({required String name, required int age}) : super(name: name, age: age);

  bark() {
    print('Barked');
  }

  @override
  void sleep() {
    super.sleep();
    print('Sleept snoring a lot!!!');
  }

  @override
  death() {
    print('He kick the bucket :(');
  }
}

class Cat extends Animal {
  Cat({required String name, required int age}) : super(name: name, age: age);

  meow() {
    print('Meowed');
  }

  @override
  void sleep() {
    super.sleep();
    print('Sleept for more than 15 hours!!! Lazy cat');
  }

  @override
  death() {
    print('Lost one of his seven lifes');
  }
}

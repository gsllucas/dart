void main() {
  Dog dog = Dog();
  Cat cat = Cat();

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
}

class Animal {
  String? name;
  double? height;
  double? weight;

  void sleep() {
    print('Slept');
  }

  void eat() {
    print('Ate');
  }
}

class Dog extends Animal {
  bark() {
    print('Barked');
  }
}

class Cat extends Animal {
  meow() {
    print('Meowed');
  }
}

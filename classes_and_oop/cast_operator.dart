import 'inherit.dart';

void main() {
  final animalAsCat = generateAnimal();
  final cat = (animalAsCat as Cat);
  cat.sleep();
}

Animal generateAnimal() {
  return Cat(name: 'Cat name', age: 4);
}

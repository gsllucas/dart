import 'model/person_model.dart';

void main() {
  Person myPerson = Person(
    name: 'Lucas G. Silva',
    age: 22,
    address: 'Brasília-DF',
    height: 1.82,
    weight: 73,
  );

  myPerson.setAccountMoney = 2290;

  final model = PersonModel(person: myPerson).setModel();
  print(model);
}

class Person {
  String name;
  int age;
  String address;
  double height;
  double weight;
  num? _account_money;

  Person({
    required this.name,
    required this.age,
    required this.address,
    required this.height,
    required this.weight,
  });

  get getAccountMoney {
    return _account_money;
  }

  set setAccountMoney(num value) {
    _account_money = value;
  }

  num calculateBodyMassIndex({required double weight, required double height}) {
    return (weight / (height * height)).round();
  }
}

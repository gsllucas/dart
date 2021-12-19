import '../classes.dart';

class PersonModel {
  Person person;

  PersonModel({required Person this.person});

  Map<String, dynamic> setModel() {
    final Map<String, dynamic> model = {
      "name": person.name,
      "age": person.age,
      "address": person.address,
      "weight": person.weight,
      "height": person.height,
      "imc": setImc(),
      "money": person.getAccountMoney,
    };
    return model;
  }

  num setImc() {
    return person.calculateBodyMassIndex(
      weight: person.weight,
      height: person.height,
    );
  }
}

void main() {
  List<String> carros = ['Fiesta', 'Civic', 'Gol', 'Focus'];

  // The cascade operator is ".." and it returns the object when the function accessed through the object has void return;
  addCar(String car) {
    return carros
      ..add(car)
      ..add('$car 2')
      ..add('$car 3');
  }

  addCar('Monza');

  print(carros);
}

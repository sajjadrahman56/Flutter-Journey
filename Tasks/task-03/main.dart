import 'cars.dart';

void main() {
  Car car1 = Car("Toyota", "Camry", 2020, 10000);
  Car car2 = Car("Honda", "Civic", 2018, 8000);
  Car car3 = Car("Ford", "F-150", 2015, 15000);

  print(
      "Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Miles: ${car1.getMilesDriven()} Age: ${car1.getAge()}");
  print(
      "Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Miles: ${car2.getMilesDriven()} Age: ${car2.getAge()}");
  print(
      "Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Miles: ${car3.getMilesDriven()} Age: ${car3.getAge()}");

  print('Total number of cars created: ${Car.numberOfCars}');
}

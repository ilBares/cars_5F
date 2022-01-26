import 'package:flutter/material.dart';
import 'car.dart';

void main() => runApp(const CarsApp());

class CarsApp extends StatelessWidget {
  const CarsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Car> cars = [];
    cars.add(Car('Mini Cooper D', 'FB880FY', 2016));
    cars.add(Car('Lamborghini Aventador', 'SX880FY', 2020));
    cars.add(Car('BMW 116D', 'KB880FY', 2011));


    return MaterialApp(
      title: 'Cars',
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            // 3 items, ovvero la lunghezza della lista cars
            itemCount: cars.length,
            // item builder vien invocato 3 volte (length di cars)
            // ogni volta che viene invocato costruisce un elemento
            // della ListView -> Text
            itemBuilder: (context, index) {
              // il Widget "ritornato" corrisponde all'item stampato
              return _buildItem(cars[index]);
            }
          ),
        ),
      ),
    );
  }

  Widget _buildItem(Car car) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: ListTile(
          leading: const Icon(Icons.directions_car),
          title: Text(
            'Title ${car.model}',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          subtitle: Text(
            'Subtitle ${car.licensePlate}',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
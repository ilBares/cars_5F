import 'package:flutter/material.dart';
import 'car.dart';

void main() => runApp(const CarsApp());

class CarsApp extends StatelessWidget {
  const CarsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List carList = [];
    carList.add(Car('Ferrari', 'FB880FY', 1998));
    carList.add(Car('Mini', 'FB880FY', 2016));

    return MaterialApp(
      title: 'Cars',
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            // 15 items, per ogni item invoca itemBuilder
              itemCount: carList.length,
              itemBuilder: (context, index) {
                return _buildItem(carList[index]);
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
          leading: const Icon(Icons.book),
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
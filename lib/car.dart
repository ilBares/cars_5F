
class Car {
  String _model;
  String _licensePlate;
  int _year;

  Car(this._model, this._licensePlate, this._year);

  int get year => _year;

  set year(int value) => _year = value;

  String get model => _model;

  set model(String value) {
    _model = value;
  }

  String get licensePlate => _licensePlate;

  set licensePlate(String value) {
    _licensePlate = value;
  }
}
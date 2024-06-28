// ขั้นตอนที่ 1: การสร้างคลาสและอินสแตนซ์

class Person {
  String _name;

  Person(this._name);

  String get name => _name;
  set name(String name) => _name = name;
}

class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);

  String get model => _model;
  set model(String model) => _model = model;

  int get speed => _speed;
  set speed(int speed) => _speed = speed;

  void displayEngineInfo() {
    print('Engine Model: $_model, Speed: $_speed km/h');
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  String get brand => _brand;
  set brand(String brand) => _brand = brand;

  String get model => _model;
  set model(String model) => _model = model;

  Person get owner => _owner;
  set owner(Person owner) => _owner = owner;

  Engine get engine => _engine;
  set engine(Engine engine) => _engine = engine;

  void displayCarInfo() {
    print('Car Brand: $_brand');
    print('Car Model: $_model');
    print('Owner: ${_owner.name}');
    _engine.displayEngineInfo();
  }

  void run() {
    print('Running at ${_engine.speed} km/h');
    print('');
  }
}

// ขั้นตอนที่ 2: การสร้างคลาสพ่อแม่และคลาสลูก

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  String get color => _color;
  set color(String color) => _color = color;

  @override
  void run() {
    print('Running at 120 km/h');
  }

  @override
  void displayCarInfo() {
    print('Car Brand: $brand');
    print('Car Model: $model');
    print('Car Color: $color');
    print('Owner: ${owner.name}');
    engine.displayEngineInfo();
  }
}

// ขั้นตอนที่ 3: ข้อกำหนดเพิ่มเติม

void main() {
  Person owner = Person('Patrick Bateman');

  Engine engine = Engine('V8', 200);

  Car car = Car('Toyota', 'Corolla', owner, engine);
  car.displayCarInfo();
  car.run();

  Honda honda = Honda('Honda', 'Civic', owner, engine, 'Red');
  honda.displayCarInfo();
  honda.run();
}

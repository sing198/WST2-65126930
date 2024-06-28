// Step 1: Create Classes and Instances

class Person {
  String _name;

  Person(this._name);

  // Getter and Setter for name
  String get name => _name;
  set name(String name) => _name = name;
}

class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);

  // Getter and Setter for model and speed
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

  // Getter and Setter for brand, model, owner, and engine
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
  }
}

// Step 2: Create Parent and Child Classes

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  // Getter and Setter for color
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

// Step 3: Additional Requirements and main function

void main() {
  // Create a person
  Person owner = Person('John Doe');

  // Create an engine
  Engine engine = Engine('V8', 200);

  // Create a car
  Car car = Car('Toyota', 'Camry', owner, engine);
  car.displayCarInfo();
  car.run();

  // Create a Honda car
  Honda honda = Honda('Honda', 'Civic', owner, engine, 'Red');
  honda.displayCarInfo();
  honda.run();
}

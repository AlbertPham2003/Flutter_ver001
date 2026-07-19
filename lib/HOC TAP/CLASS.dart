class Vehicle {
  String name;
  double speed;

  Vehicle(this.name, this.speed);

  void introduct(){
    print('Tên phương tiện: $name');
    print('Tốc độ tối đa $speed km/h');
  }
}

class Car extends Vehicle {
  int utility;
  Car(String name, double speed, this.utility): super(name, speed);
  
  @override
  void showInfo() {
    print('$name đang chạy với tốc độ $speed km/h');
    super.introduct();
  }
}

class Bicycle extends Vehicle {
  bool isHaveGio;
  Bicycle(super.name, super.speed, this.isHaveGio);
  
  @override
  void showInfo() {
    print('$name đang đạp xe với tốc độ $speed km/h');
    super.introduct();
  }
}

void main(){
  var car = Car('Xe Hoi', 180, 4);
  car.showInfo();

  var bicycle = Bicycle('Xe Dap', 32, true);
  bicycle.showInfo();
}
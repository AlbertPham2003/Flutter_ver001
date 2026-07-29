void main() {
  var e1 = Employee(name: 'Pham Anh M', hour: 50, salary: 200000);
  var e2 = Employee(name: 'Nguyen Van B', hour: 40, salary: 50000);

  e1.work();
  e2.work();
}

class Employee {
  final String name;
  final double hour;
  final double salary;

  Employee({required this.name, required this.hour, required this.salary});

  double get grossSalary1 => hour * salary;
  double get bonus =>
  hour > 40 ? grossSalary1 * 0.2 : 0;
  double get grossSalary2 => grossSalary1 + bonus;
  double get taxRate =>
  grossSalary2 >= 10000000 ? grossSalary2*0.1
  : grossSalary2 >= 7000000 ? grossSalary2*0.05
  : 0;
  double get netSalary => grossSalary2 - taxRate;

  void work(){
    print('Nhân viên tên: $name, tổng lương trước thuế: $grossSalary2, thuế thu nhập: $taxRate, lương thực lãnh: $netSalary');
  }
}
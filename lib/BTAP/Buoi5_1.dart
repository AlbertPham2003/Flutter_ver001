class Employee {
  String name;
  int hour;
  double salaryPerHour;

  Employee(this.name, this.hour, this.salaryPerHour);

  double get hourlyRate => hour > 40 ? salaryPerHour * 1.2 : salaryPerHour;

  double get grossIncome => hour * hourlyRate;

  double get taxRate {
    if(grossIncome >= 10000000) return 0.1;
    if(grossIncome >= 7000000) return 0.05;
    return 0;
  }
  
  double get taxRate1 => grossIncome > 100 ? grossIncome : grossIncome * 2;

  double get tax => grossIncome * taxRate;
  double get netIncome => grossIncome - tax;

  void introduction () {
    print('Employee name: $name');
    print('Gross Income: $grossIncome');
    print('Tax rate: $taxRate');
    print('Net Income: $netIncome');
  }
}

void main() {
  var personA = Employee('NguyenVanA', 50, 150000);
  var personB = Employee('PhamVanB', 30, 200000);

  personA.introduction();
  personB.introduction();
}
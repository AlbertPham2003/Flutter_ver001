import 'dart:io';

void main() {
  stdout.write('Nhập họ tên nhân viên: ');
  String name = stdin.readLineSync()!;

  stdout.write('Nhập số giờ làm việc: ');
  double hours = double.parse(stdin.readLineSync()!);

  stdout.write('Nhập lương mỗi giờ: ');
  double salaryPerHour = double.parse(stdin.readLineSync()!);

  double totalSalary = hours * salaryPerHour;

  double allowance = 0;

  if (hours > 40) {
    allowance = totalSalary * 0.20;
  }

  double salaryBeforeTax = totalSalary + allowance;

  double tax = 0;

  if (salaryBeforeTax > 10000000) {
    tax = salaryBeforeTax * 0.10;
  } else if (salaryBeforeTax >= 7000000) {
    tax = salaryBeforeTax * 0.05;
  } else {
    tax = 0;
  }

  double actualSalary = salaryBeforeTax - tax;

  print('Họ tên: $name');
  print('Tổng lương trước thuế: ${salaryBeforeTax.toStringAsFixed(0)} VNĐ');
  print('Thuế thu nhập: ${tax.toStringAsFixed(0)} VNĐ');
  print('Lương thực lãnh: ${actualSalary.toStringAsFixed(0)} VNĐ');
}
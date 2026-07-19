class Student {
  int id;
  String name;
  int age;
  int grade;

  Student (this.id, this.name, this.age, this.grade);

  void introduct() {
    print('Học sinh có thông tin sau: ID: $id, Tên: $name, Tuổi: $age, Lớp: $grade');
  }
}

class BankAccount {
  dynamic accountNumber;
  String ownerName;
  double balance;

  BankAccount ({required this.accountNumber, required this.ownerName, required this.balance});
  
  void deposit(double amount){
    balance += amount;
  }
  void withDraw(double amount){
    balance -= amount;
  }
  void checkBalance(){
    print('$accountNumber có số dư là: $balance');
  }
}

void main () {
  Student personA = Student(001, 'A', 18, 12);
  Student personB = Student(002, 'B', 16, 10);
  Student personC = Student(003, 'C', 17, 11);

  personA.introduct();
  print('Tên là: ${personA.name}');

  var accountA = BankAccount(accountNumber: 123456, balance: 10000, ownerName: 'Nguyen');

  accountA.withDraw(5000);
  accountA.checkBalance();

  print(0.1234.toStringAsFixed(2));
}
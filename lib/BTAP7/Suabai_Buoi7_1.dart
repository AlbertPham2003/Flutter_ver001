import 'dart:io';
void main() {
  List<Student> students = [];
  while(true) {
    print("1. Thêm học sinh");
    print("2. Hiển thị danh sách học sinh");
    print("3. Tìm học sinh có điểm TB cao nhất");
    print("4. Thoát");
    var option = stdin.readLineSync();
    if (option == '1') {
      print("Nhập tên học sinh: ");
      var name = stdin.readLineSync();
      print("Nhập điểm Toán: "); //''
      var diemToan = double.tryParse(stdin.readLineSync()) ?? 0;
      print("Nhập điểm Hóa: ");
      var diemHoa = double.tryParse(stdin.readLineSync()) ?? 0;
      print("Nhập điểm Lý: ");
      var diemLy = double.tryParse(stdin.readLineSync()) ?? 0;
      students.add(Student(name: name ?? "", diemToan: diemToan, diemHoa: diemHoa, diemLy: diemLy));
    }
    if (option == '2') {
      for (var student in students) {
        print("Tên: ${student.name}");
        print("Điểm Toán: ${student.diemToan}");
        print("Điểm Hóa: ${student.diemHoa}");
        print("Điểm Lý: ${student.diemLy}");
        print("Điểm trung bình: ${student.diemTB()}");
        print("Xếp loại: ${student.xepLoai()}");
      }
    }
    if (option == '3') {
      if (students.isEmpty) {
        print("Danh sách rỗng");
        continue;
      }
      var student = students.reduce((a, b) => a.diemTB() > b.diemTB() ? a : b);
      print("Học sinh có điểm trung bình cao nhất là: ${student.name}");
      print("Điểm trung bình: ${student.diemTB()}");
    }

    if (option == '4') {
      break;
      //exit(0);
    }

  }

}

class Student {
  final String name;
  final double diemToan;
  final double diemHoa;
  final double diemLy;
  Student({required this.name, required this.diemToan, required this.diemHoa, required this.diemLy});
  double diemTB() {
    return (diemToan + diemHoa + diemLy) / 3;
  }
  String xepLoai() {
    double dtb = diemTB();
    if (dtb >= 8) {
      return "Giỏi";
    } else if (dtb >= 6.5) {
      return "Khá";
    } else if (dtb >= 5) {
      return "Trung bình";
    } else {
      return "Yếu";
    }
  }
}
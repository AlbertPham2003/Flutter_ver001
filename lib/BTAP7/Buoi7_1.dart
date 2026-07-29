import 'dart:math' as Math;

class student {
  String name;
  double diemToan;
  double diemLy;
  double diemHoa;

  student(this.name, this.diemToan, this.diemLy, this.diemHoa);

  double get avg => (diemToan + diemLy + diemHoa) / 3;

  String get arrange => 
    avg > 9 ? 'Xuất sắc'
  : avg > 7 ? 'Giỏi'
  : avg > 5 ? 'Khá'
  : 'Kém';

  void introduct(){
    print('Học sinh: $name, điểm trung bình: $avg, xếp loại học lực: $arrange');
  }
}

void main(){
  List<student> students = [
    student('NguyenVanA', 6, 5, 8),
    student('PhamVanB', 7, 9, 5),
    student('TranVanC', 4, 5, 5),
    student('LeVanD', 9, 8, 7),
  ];

  for (var ss in students) {
    ss.introduct();
  }

  student maxStudent = students[0];

  for (int i = 1; i < students.length; i++) {
    if (students[i].avg > maxStudent.avg) {
      maxStudent = students[i];
    }
  }

  print('Sinh viên có điểm cao nhất là: ${maxStudent.name}');
  print('Điểm trung bình: ${maxStudent.avg}');
}

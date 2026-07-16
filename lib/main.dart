void main() {
  
  List<double> pointA = [7.5, 8.0, 9.5];
  var a = pointA;
  print('Điểm TB A: ${(a[0] + a[1] + a[2])/3}');

  if ((a[0] + a[1] + a[2])/3 >= 8) {
    print('A loại Giỏi');
  }
  else if ((a[0] + a[1] + a[2])/3 >= 6.5 && (a[0] + a[1] + a[2])/3 < 8) {
    print('A loại Khá');
  }
  else if ((a[0] + a[1] + a[2])/3 < 6.5 && (a[0] + a[1] + a[2])/3 >= 5) {
    print('A loại Trung bình');
  }
  else if ((a[0] + a[1] + a[2])/3 < 5) {
    print('A loại Yếu');
  }
  else if (a[0] < 4 || a[1] < 4 || a[2] < 4) {
    print('Trượt môn');
  }
}
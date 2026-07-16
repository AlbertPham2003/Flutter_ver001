void main() {
  String name = 'Nguyen';
  double diemToan = 5;
  double diemHoa = 4;
  double diemLy = 7;

  double DTB = (diemToan + diemHoa + diemLy) / 3;
  String? xl;

  if (diemToan < 4 || diemHoa < 4 || diemLy < 4) {
    print('Trượt môn');
    return;
  }
  if (DTB >= 8) {
    xl = 'HSG';
    print('HSG');
  }
  else if (DTB >= 6.5) {
    xl = 'HSK';
    print('HSK');
  }
  else if (DTB >= 5) {
    xl = 'HSTB';
    print('HSTB');
  }
  else if (DTB < 5) {
    xl = 'HSY';
    print('HSY');
  }
  print('Học sinh tên là $name có điểm TB là: $DTB, xếp loại %xl');
}
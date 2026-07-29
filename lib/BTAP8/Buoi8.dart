import 'dart:io';

void main() {
  List<Product> products [];
  while (true) {
    print('1. Thêm sản phẩm');
    print('2. Hiển thị danh sách sản phẩm');
    print('3. Tìm sản phẩm theo tên');
    print('4. Bán hàng');
    print('5. Thoát chương trình');
    print('Vui lòng chọn chức năng: ');
    
  }
}

class Product {
  final String name;
  final double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

}
import 'dart:io';

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  void display() {
    print('Tên: $name, Giá: $price VNĐ, Tồn kho: $quantity');
  }
}

void main() {
  List<Product> products = [];

  while (true) {
    print('1. Thêm sản phẩm');
    print('2. Hiển thị danh sách');
    print('3. Tìm sản phẩm');
    print('4. Bán sản phẩm');
    print('5. Thoát');
    //stdout.write('Chọn chức năng: ');

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write('Tên sản phẩm: ');
        String name = stdin.readLineSync()!;

        stdout.write('Giá tiền: ');
        double price = double.parse(stdin.readLineSync()!);

        stdout.write('Số lượng: ');
        int quantity = int.parse(stdin.readLineSync()!);

        products.add(Product(name, price, quantity));

        print('Đã thêm sản phẩm.');
        break;

      case 2:
        if (products.isEmpty) {
          print('Danh sách đang trống.');
        } else {
          //print('\n------ DANH SÁCH SẢN PHẨM ------');

          for (var p in products) {
            p.display();
          }
        }
        break;

      case 3:
        stdout.write('Nhập tên cần tìm: ');
        String keyword = stdin.readLineSync()!;

        bool found = false;

        for (var p in products) {
          if (p.name.toLowerCase() == keyword.toLowerCase()) {
            p.display();
            found = true;
          }
        }

        if (!found) {
          print('Không tìm thấy sản phẩm.');
        }
        break;

      case 4:
        stdout.write('Tên sản phẩm: ');
        String name = stdin.readLineSync()!;

        stdout.write('Số lượng bán: ');
        int sell = int.parse(stdin.readLineSync()!);

        bool found = false;

        for (var p in products) {
          if (p.name.toLowerCase() == name.toLowerCase()) {

            found = true;

            if (p.quantity >= sell) {
              p.quantity -= sell;
              print('Bán thành công.');
              print('Tồn kho còn: ${p.quantity}');
            } else {
              print('Không đủ hàng.');
            }

            break;
          }
        }

        if (!found) {
          print('Không tìm thấy sản phẩm.');
        }

        break;

      case 5:
        print('Đã thoát chương trình.');
        return;

      default:
        print('Lựa chọn không hợp lệ.');
    }
  }
}
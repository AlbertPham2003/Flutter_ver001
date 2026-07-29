import 'dart:io';

void main() {
  List<Product> products = [];
  while(true) {
    print('1. Thêm sản phẩm');
    print('2. Hiển thị danh sách sản phẩm');
    print('3. Tìm sản phẩm theo tên');
    print('4. Bán hàng');
    print('5. Thoát chương trình');
    print('Vui lòng chọn chức năng: ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('Nhập tên sản phẩm:');
      String? name = stdin.readLineSync();
      print('Nhập giá sản phẩm:');
      double? price = double.parse(stdin.readLineSync()!);
      print('Nhập số lượng sản phẩm:');
      int? quanity = int.parse(stdin.readLineSync()!);
      products.add(Product(name: name ?? '', price: price ?? 0, quanity: quanity ?? 0));
    }

    if (choice == '2') {
      for (var product in products) {
        print('Tên: ${product.name}, Giá: ${product.price}, Số lượng: ${product.quanity}');
      }
    }

    if (choice == '3') {
      print('Nhập tên sản phẩm cần tìm:');
      String? name = stdin.readLineSync();
      for (var product in products) {
        if (product.name == name) {
          print('Tên: ${product.name}, Giá: ${product.price}, Số lượng: ${product.quanity}');
        }
      }
    }

    if (choice == '4') {
      print('Nhập tên sản phẩm cần bán:');
      String? name = stdin.readLineSync();
      print('Nhập số lượng sản phẩm cần bán:');
      int? quanity = int.parse(stdin.readLineSync()!);
      
      for (var product in products) {
        if ((product.name ?? '').trim() == (name ?? '').trim()) {
           if (product.quanity > 0) {
            product.quanity -= quanity!;
            print('Tên: ${product.name}, Giá: ${product.price}, Số lượng: ${product.quanity}');
           }
           else {
            print('Sản phẩm đã hết hàng');
           }
        }
        else {
          print('Không tìm thấy sản phẩm');
        }
      }
    }

    if (choice == '5') {
      break;
    }
    
  }
}

class Product {
  final String name;
  final double price;
  int quanity;

  Product({required this.name, required this.price, required this.quanity});
}
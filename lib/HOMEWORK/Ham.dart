import 'dart:io';

void main() {
  List<Map<String, dynamic>> cart = [];
  while (true) {
    print('\nQUẢN LÝ HÓA ĐƠN');
    print('1. Thêm sản phẩm');
    print('2. Sửa sản phẩm');
    print('3. Xóa sản phẩm');
    print('4. Hiển thị giỏ hàng');
    print('5. Tính tổng hóa đơn');
    print('6. Thoát');
    stdout.write('Chọn chức năng: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addProduct(cart);
        break;

      case '2':
        editProduct(cart);
        break;

      case '3':
        deleteProduct(cart);
        break;

      case '4':
        displayCart(cart);
        break;

      case '5':
        calculateTotal(cart);
        break;

      case '6':
        print("Đã thoát chương trình.");
        return;

      default:
        print("Lựa chọn không hợp lệ!");
    }
  }
}

void addProduct(List<Map<String, dynamic>> cart) {
  stdout.write("Nhập tên sản phẩm: ");
  String? name = stdin.readLineSync();

  stdout.write("Nhập số lượng: ");
  int quantity = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập giá tiền: ");
  double price = double.parse(stdin.readLineSync()!);

  cart.add({
    "name": name,
    "quantity": quantity,
    "price": price,
  });

  print("Đã thêm sản phẩm thành công!");
}

void editProduct(List<Map<String, dynamic>> cart) {
  if (cart.isEmpty) {
    print("Giỏ hàng trống.");
    return;
  }

  displayCart(cart);

  stdout.write("Nhập số thứ tự sản phẩm muốn sửa: ");
  int index = int.parse(stdin.readLineSync()!) - 1;

  if (index >= 0 && index < cart.length) {
    stdout.write("Tên mới: ");
    cart[index]["name"] = stdin.readLineSync();

    stdout.write("Số lượng mới: ");
    cart[index]["quantity"] = int.parse(stdin.readLineSync()!);

    stdout.write("Giá mới: ");
    cart[index]["price"] = double.parse(stdin.readLineSync()!);

    print("Đã cập nhật sản phẩm.");
  } else {
    print("Không tìm thấy sản phẩm.");
  }
}

void deleteProduct(List<Map<String, dynamic>> cart) {
  if (cart.isEmpty) {
    print("Giỏ hàng trống.");
    return;
  }

  displayCart(cart);

  stdout.write("Nhập số thứ tự sản phẩm muốn xóa: ");
  int index = int.parse(stdin.readLineSync()!) - 1;

  if (index >= 0 && index < cart.length) {
    cart.removeAt(index);
    print("Đã xóa sản phẩm.");
  } else {
    print("Không tìm thấy sản phẩm.");
  }
}

void displayCart(List<Map<String, dynamic>> cart) {
  if (cart.isEmpty) {
    print("Giỏ hàng đang trống.");
    return;
  }

  print("\nGIỎ HÀNG");

  for (int i = 0; i < cart.length; i++) {
    print(
        "${i + 1}. ${cart[i]["name"]} - SL: ${cart[i]["quantity"]} - Giá: ${cart[i]["price"]} - Thành tiền: ${cart[i]["quantity"] * cart[i]["price"]}");
  }
}

void calculateTotal(List<Map<String, dynamic>> cart) {
  if (cart.isEmpty) {
    print("Giỏ hàng trống.");
    return;
  }

  double total = 0;

  for (var product in cart) {
    total += product["quantity"] * product["price"];
  }

  print("Tổng tiền hóa đơn: $total");
}
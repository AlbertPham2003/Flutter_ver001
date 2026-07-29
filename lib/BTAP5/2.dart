void main() {
  var p1 = Product(name: 'Bánh bao', quantity: 3, price: 30000);
  var p2 = Product(name: 'Chai nước', quantity: 5, price: 15000);

  p1.shop();
  p2.shop();
}

class Product {
  final String name;
  final double quantity;
  final double price;

  Product({required this.name, required this.quantity, required this.price});

  double get pay1 => quantity * price;
  double get discount => pay1 >= 1000000 ? pay1 * 0.1
  : pay1 >= 500000 ? pay1 * 0.05
  : 0;
  double get vat => (pay1-discount) * 0.08;
  double get pay2 => pay1 - vat;

  void shop() {
    print('Tên sản phẩm: $name, số lượng: $quantity, đơn giá: $price');
    print('Thành tiền: $pay1, giảm giá: $discount, thuế VAT: $vat, tổng thanh toán cuối cùng: $pay2');
  }
}
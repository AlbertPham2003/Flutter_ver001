class Product {
  String name;
  double volume;
  double price;

  Product(this.name, this.volume, this.price);

  double get cost => volume * price;

  double get discount =>
      cost >= 1000000 ? cost * 0.1
    : cost >= 500000 ? cost * 0.05
    : cost;
  
  double get tax => discount * 0.08;
  double get afterTax => discount - tax;

  void introduction() {
    print('Sản phẩm: $name, Số lượng: $volume, Đơn giá: $price');
    print('Thành tiền: $cost, Giảm giá: $discount, Thuế VAT: $tax, Tổng thanh toán: $afterTax');
  }
}

void main() {
  Product rice = Product('Gạo', 10, 200000);

  rice.introduction();
}

void main() {
  var product = Product(name: 'Mi hao', price: 5000, quantity: 10);
  print(product.finalTotal());
  product.printBill();
}

class Product {
  final String name;
  final double quantity;
  final double price;

  Product({required this.name, required this.quantity, required this.price});

  double total() {
    return quantity * price;
  }

  double discount() {
    if (total() >= 1000000){
      return total() * 0.1;
    }
    else if (total() > 500000){
      return total() * 0.05;
    }
    return 0;
  }

  double finalTotal() {
    return total() - ((total() - discount()) * 0.08);
  }

  void printBill() {
    print('San PhamL $name');
    print('So luong: $quantity');
    print('Gia: $price');
    print('Tong: ${total()}');
    print('Giam gia: ${discount()}');
    print('Tong cuoi cung: ${finalTotal()}');
  }
}

// class Product {
//   String name;
//   int volume;
//   double price;

//   Product({required this.name, required this.volume, required this.price});

//   double get cost => volume * price;

//   double get sales =>
//   cost >= 1000000 ? cost - (cost * 0.1)
//   : cost >= 500000 ? cost - (cost * 0.05)
//   : cost;

//   double get vat => (cost - sales)*0.08;

//   double get finalCost => cost - sales - vat;

//   void introduct(){
//     print(name);
//     print(volume);
//     print(price);
//     print(cost);
//   }
// }

// void main() {
//   var p = Product(name: 'Bread', volume: 10, price: 120000);

//   p.introduct;
//   print(p.finalCost);
//   print(p.sales);
// }
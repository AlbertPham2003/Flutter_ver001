import 'package:flutter/material.dart';
import 'components/product_list_item.dart';

class GroceryListScreen extends StatelessWidget {
  final String categoryName;

  const GroceryListScreen({
    super.key,
    required this.categoryName,
  });

  // Dữ liệu sản phẩm mẫu tương ứng cho từng danh mục
  List<Map<String, String>> _getProductsByCategory(String category) {
    switch (category.toLowerCase()) {
      case 'vegetable':
        return [
          {'name': 'Broccoli', 'stock': '500 ready stock', 'price': '\$8'},
          {'name': 'Carrot', 'stock': '800 ready stock', 'price': '\$4'},
          {'name': 'Tomato', 'stock': '1200 ready stock', 'price': '\$6'},
          {'name': 'Spinach', 'stock': '300 ready stock', 'price': '\$5'},
          {'name': 'Cabbage', 'stock': '650 ready stock', 'price': '\$7'},
        ];
      case 'cookies':
        return [
          {'name': 'Choco Chip Cookie', 'stock': '250 ready stock', 'price': '\$12'},
          {'name': 'Butter Cookie', 'stock': '400 ready stock', 'price': '\$10'},
          {'name': 'Donut Glaze', 'stock': '150 ready stock', 'price': '\$8'},
          {'name': 'Macaron Box', 'stock': '100 ready stock', 'price': '\$18'},
          {'name': 'Oatmeal Cookie', 'stock': '300 ready stock', 'price': '\$9'},
        ];
      case 'meat':
        return [
          {'name': 'Fresh Beef', 'stock': '120 ready stock', 'price': '\$35'},
          {'name': 'Chicken Breast', 'stock': '300 ready stock', 'price': '\$18'},
          {'name': 'Pork Ribs', 'stock': '200 ready stock', 'price': '\$22'},
          {'name': 'Salmon Fillet', 'stock': '80 ready stock', 'price': '\$40'},
          {'name': 'Lamb Chops', 'stock': '90 ready stock', 'price': '\$38'},
        ];
      case 'fruit':
      default:
        return [
          {'name': 'Orange', 'stock': '1000 ready stock', 'price': '\$15'},
          {'name': 'Apple', 'stock': '1000 ready stock', 'price': '\$20'},
          {'name': 'Banana', 'stock': '1000 ready stock', 'price': '\$5'},
          {'name': 'Mango', 'stock': '1000 ready stock', 'price': '\$15'},
          {'name': 'Strawberry', 'stock': '500 ready stock', 'price': '\$25'},
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final products = _getProductsByCategory(categoryName);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          categoryName,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 8, bottom: 20),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return ProductListItem(
            name: item['name']!,
            stock: item['stock']!,
            price: item['price']!,
          );
        },
      ),
    );
  }
}
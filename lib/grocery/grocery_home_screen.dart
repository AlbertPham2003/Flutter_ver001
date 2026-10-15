import 'package:flutter/material.dart';
import 'components/category_grid_item.dart';
import 'grocery_list_screen.dart';

class GroceryHomeScreen extends StatelessWidget {
  const GroceryHomeScreen({super.key});

  void _navigateToCategory(BuildContext context, String categoryName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GroceryListScreen(categoryName: categoryName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Thanh Header có nút mũi tên quay lại Get Started
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // NÚT QUAY LẠI MÀN HÌNH GET STARTED
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back, color: Colors.black87),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      const SizedBox(width: 14),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your Balance', style: TextStyle(fontSize: 13, color: Colors.grey)),
                          SizedBox(height: 2),
                          Text(
                            '\$1,700.00',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                      color: Color(0xFF558B2F),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Banner giảm giá
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: const Color(0xFF558B2F),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Buy Orange 10 Kg\nGet discount 25%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              const Text(
                'For you',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 14),

              // Danh sách 4 danh mục
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1.05,
                  children: [
                    CategoryGridItem(
                      title: 'Fruit',
                      icon: Icons.eco,
                      iconColor: Colors.orange,
                      onTap: () => _navigateToCategory(context, 'Fruit'),
                    ),
                    CategoryGridItem(
                      title: 'Vegetable',
                      icon: Icons.grass,
                      iconColor: Colors.green,
                      onTap: () => _navigateToCategory(context, 'Vegetable'),
                    ),
                    CategoryGridItem(
                      title: 'Cookies',
                      icon: Icons.cookie,
                      iconColor: Colors.brown,
                      onTap: () => _navigateToCategory(context, 'Cookies'),
                    ),
                    CategoryGridItem(
                      title: 'Meat',
                      icon: Icons.kebab_dining,
                      iconColor: Colors.redAccent,
                      onTap: () => _navigateToCategory(context, 'Meat'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
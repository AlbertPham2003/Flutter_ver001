import 'package:flutter/material.dart';

class StoreHomeScreen extends StatelessWidget {
  const StoreHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'title': 'Music', 'icon': Icons.music_note_outlined},
      {'title': 'Property', 'icon': Icons.home_work_outlined},
      {'title': 'Game', 'icon': Icons.sports_esports_outlined},
      {'title': 'Gadget', 'icon': Icons.phone_android_outlined},
      {'title': 'Electronic', 'icon': Icons.tv_outlined},
      {'title': 'Property', 'icon': Icons.percent_outlined},
      {'title': 'Game', 'icon': Icons.directions_car_outlined},
      {'title': 'Book', 'icon': Icons.menu_book_outlined},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Có nút Back quay lại Explore
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // NÚT QUAY LẠI
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back, color: Colors.black87),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      const SizedBox(width: 12),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome back,', style: TextStyle(color: Colors.grey, fontSize: 12)),
                          SizedBox(height: 2),
                          Text(
                            'Samantha William',
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined, color: Colors.redAccent),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Search Bar & Filter
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 44,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey, size: 20),
                          SizedBox(width: 8),
                          Text('Searching item', style: TextStyle(color: Colors.grey, fontSize: 13)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD97D3E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.tune, color: Colors.white, size: 20),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Big Image Banner
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF38859E),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image_outlined, size: 48, color: Colors.white),
                    SizedBox(height: 4),
                    Text('Image Here', style: TextStyle(color: Colors.white70, fontSize: 11)),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Indicator Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2.5),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 1 ? const Color(0xFFD97D3E) : Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Grid 8 Icons
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Icon(cat['icon'] as IconData, size: 22, color: const Color(0xFF38859E)),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        cat['title'] as String,
                        style: const TextStyle(fontSize: 11, color: Colors.black87),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 16),

              // Best Seller Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Best Seller', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 12, color: Colors.orange.shade700, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Best Seller List
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    BestSellerCard(name: 'Plant'),
                    BestSellerCard(name: 'Lamp'),
                    BestSellerCard(name: 'Chair'),
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

class BestSellerCard extends StatelessWidget {
  final String name;

  const BestSellerCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 65,
            decoration: const BoxDecoration(
              color: Color(0xFF38859E),
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: const Center(
              child: Icon(Icons.image_outlined, color: Colors.white, size: 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                const Row(
                  children: [
                    Icon(Icons.star, size: 10, color: Colors.amber),
                    Icon(Icons.star, size: 10, color: Colors.amber),
                    Icon(Icons.star, size: 10, color: Colors.amber),
                    Icon(Icons.star, size: 10, color: Colors.amber),
                    Icon(Icons.star, size: 10, color: Colors.amber),
                    SizedBox(width: 2),
                    Text('5.0', style: TextStyle(fontSize: 8, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
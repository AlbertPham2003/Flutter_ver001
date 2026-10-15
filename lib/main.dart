import 'package:flutter/material.dart';
import 'store/components/grocery_onboarding_screen.dart';
// import 'explore_screen.dart';
// import 'store_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Exercise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF558B2F)),
        useMaterial3: true,
      ),
      // Mặc định chạy màn hình Onboarding của bộ Grocery (ấn nút "Get Started" sẽ qua Home và List)
      home: const GroceryOnboardingScreen(),
      // Để xem bộ màn hình bên phải, bạn chỉ cần mở comment một trong hai dòng dưới:
      // home: const ExploreScreen(),
      // home: const StoreHomeScreen(),
    );
  }
}
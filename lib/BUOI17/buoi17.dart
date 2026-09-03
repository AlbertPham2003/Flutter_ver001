import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MainApp()));
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    List <Map<String, dynamic>> users = [
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Center(
                    child: Card(
                      color: Colors.brown,
                      child: Text(
                        'Hello', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          
                        textAlign: TextAlign.center)
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
      bottomNavigationBar: const SizedBox(
        height: 60,
        child: Center(child: Text('Bottom Navigation')),
      ),

      floatingActionButton: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.add),
      ),
    );
  }

  Widget _cardImage({
    required String title,
    required String info,
    required String url,
    required String sym,
  })
  {
    return Card(

    );
  }
}
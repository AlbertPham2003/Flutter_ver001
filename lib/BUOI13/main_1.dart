import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: Row(children: [MyWidget(myPhoneNumer: 'Hello World 1234567890',)],
          ),
        ),
        bottomNavigationBar: Text(''),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      );
  }
}

class MyWidget extends StatelessWidget {
  final String myPhoneNumer;
  const MyWidget({super.key, required this.myPhoneNumer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          myPhoneNumer,
          textAlign: TextAlign.center,
          maxLines: 5,
          style: TextStyle(fontFamily: 'Nguyen', fontSize: 20, color: Colors.black),
        ),
        RichText(
          text: TextSpan(
          text: 'Xin chao mn ',
          style: TextStyle(color: Colors.black),
          children: [TextSpan(text: 'LINK', style: TextStyle(color: Colors.purple))]))
      ],
    );
  }
}
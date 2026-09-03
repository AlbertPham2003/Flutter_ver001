import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(title: Text('Login'), centerTitle: true),
    body: Container(
      color: Colors.blue,
      width: 350,
      height: 650,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:Colors.blueAccent,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ienSG-CR_Y-lpTEnCmlTTKFGI6rTSCs03G-kb3mV6w&s=10'),
              child: Text('PAM')
            ),
            ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:Colors.blueAccent,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ienSG-CR_Y-lpTEnCmlTTKFGI6rTSCs03G-kb3mV6w&s=10'),
              child: Text('PAM')
            ),
            ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:Colors.blueAccent,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ienSG-CR_Y-lpTEnCmlTTKFGI6rTSCs03G-kb3mV6w&s=10'),
              child: Text('PAM')
            ),
            ),
        ],
      ),
    ),
      bottomNavigationBar: Text('Bottom Navigation'),
      floatingActionButton: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String myPhoneNumber;
  const MyWidget({super.key, required this.myPhoneNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          myPhoneNumber,
          textAlign: TextAlign.center,
          maxLines: 5,
          style: TextStyle(fontFamily: 'Nguyen', fontSize: 20, color: Colors.black),
        ),
        RichText(
          text: TextSpan(
            text: 'Xin chao mn ',
            style: TextStyle(color: Colors.black),
            children: [TextSpan(text: 'LINK', style: TextStyle(color: Colors.purple))],
          ),
        ),
      ],
    );
  }
}
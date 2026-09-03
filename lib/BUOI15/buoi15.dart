import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    _cardImage(
                      url:
                          'https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=original',
                      title: 'Bai bien Maldives',
                      desp: 'Mot trong nhung diem du lich dep nhat the gioi',
                      icon: '',
                    ),
                    _cardImage(
                      url:
                          'https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=original',
                      title: 'Bai bien Maldives',
                      desp: 'Mot trong nhung diem du lich dep nhat the gioi',
                      icon: '',
                    ),
                    _cardImage(
                      url:
                          'https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=original',
                      title: 'Bai bien Maldives',
                      desp: 'Mot trong nhung diem du lich dep nhat the gioi',
                      icon: '',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Text('Bottom Navigation'),
      floatingActionButton: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    );
  }

  Widget _cardImage({
    required String url,
    required String title,
    required String desp,
    required String icon,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(url),
            ),
            Text(title, style: TextStyle(fontSize: 20, fontWeight: .w800)),
            Text(desp, style: TextStyle(fontSize: 10, fontWeight: .w600)),
            Positioned(
              right: 0,
              child: Icon(Icons.favorite, color: Colors.pink),
            ),
          ],
        ),
      ),
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
          style: TextStyle(
            fontFamily: 'Nguyen',
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Xin chao mn ',
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: 'LINK',
                style: TextStyle(color: Colors.purple),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

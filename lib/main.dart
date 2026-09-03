import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> users = [
      {
        'name': 'Nguyen Van A',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '0815222263',
      },
      {
        'name': 'Nguyen Van B',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '0815222233',
      },
      {
        'name': 'Nguyen Van C',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '0815212233',
      },
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Card(
                    child: Image(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ienSG-CR_Y-lpTEnCmlTTKFGI6rTSCs03G-kb3mV6w&s=10',
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://thumb.wikimedia.org/wikipedia/commons/thumb/5/58/Shiba_inu_taiki.jpg/1280px-Shiba_inu_taiki.jpg?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=thumbnail'),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://thumb.wikimedia.org/wikipedia/commons/thumb/5/58/Shiba_inu_taiki.jpg/1280px-Shiba_inu_taiki.jpg?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=thumbnail'),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://thumb.wikimedia.org/wikipedia/commons/thumb/5/58/Shiba_inu_taiki.jpg/1280px-Shiba_inu_taiki.jpg?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=thumbnail'),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://thumb.wikimedia.org/wikipedia/commons/thumb/5/58/Shiba_inu_taiki.jpg/1280px-Shiba_inu_taiki.jpg?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=thumbnail'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Text('Bottom Nav'),
      floatingActionButton: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    );
  }

  Widget _buildItem({
    required String name,
    required String desc,
    required IconData icon,
  }) {
    return Column(
      children: [Icon(icon), Text(name), SizedBox(height: 10), Text(desc)],
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
          textAlign: TextAlign.end,
          maxLines: 5,
          myPhoneNumber,
          style: TextStyle(
            fontFamily: 'Nguyen',
            decoration: TextDecoration.lineThrough,
          ),
        ),
        RichText(
          text: TextSpan(
            text: 'Xin chao mn ',
            children: [
              TextSpan(
                text: 'LINK',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: ' MAUXANH',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

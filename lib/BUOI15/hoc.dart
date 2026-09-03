import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> users = [
      {
        'name': 'Nguyen Van A',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '088888888'
      },{
        'name': 'Nguyen Van A',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '088888888'
      },{
        'name': 'Nguyen Van A',
        'email': 'nguyenvan@gmail.com',
        'phoneNumber': '088888888'
      }
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              itemCount: users.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 200,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/b/bd/Golden_tabby_and_white_kitten_n01.jpg?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=original'),
                    ),
                    title: Text(users[index]['name']),
                    subtitle: Text('${users[index]['email']} | ${users[index]['phoneNumber']}'),
                    onTap: () {
                      print("Tapped on Tony");
                    },
                  ),
                );
                }, separatorBuilder: (BuildContext context, int index) { 
                  return SizedBox(height:6);
               },
            ),
          ),
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
    required String url,
    required String title,
    required String desp,
    required String icon,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Icon(Icons.broken_image, size: 50),
                          );
                        },
                      ),
                    ),
                  ),

                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite, color: Colors.pink),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),

            const SizedBox(height: 4),

            Text(
              desp,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
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
          style: const TextStyle(
            fontFamily: 'Nguyen',
            fontSize: 20,
            color: Colors.black,
          ),
        ),

        RichText(
          text: const TextSpan(
            text: 'Xin chào mn ',
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

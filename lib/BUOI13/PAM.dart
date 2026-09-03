import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: SizedBox(
        height: 800,
        width: 500,
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Strawberry Pavlova',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 6),
                      SizedBox(
                        height: 100,
                        width: 150,
                        child: Text(
                          'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Povlova.',
                          style: TextStyle(fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.star, color: Colors.black, size: 10),
                          const Icon(Icons.star, color: Colors.black, size: 10),
                          const Icon(Icons.star, color: Colors.black, size: 10),
                          const Icon(Icons.star, color: Colors.black, size: 10),
                          const Icon(Icons.star, color: Colors.black, size: 10),
                          SizedBox(width: 10),
                          Text(
                            '170 Reviews',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 10,
                              ),
                              Text('Prep'),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 10,
                              ),
                              Text('Cook'),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 10,
                              ),
                              Text('Feeds'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      width: 200,
                      height: 200,
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ienSG-CR_Y-lpTEnCmlTTKFGI6rTSCs03G-kb3mV6w&s=10',
                      ),
                      fit: BoxFit.contain,
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

import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(title: Text('Login'), centerTitle: true),
    body: Center(
      child: SizedBox(
        width: 500,
        height: 300,
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Banh kem',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600
                        )
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Banh kem la mon an rat ngon. Duoc moi nguoi dung trong sinh nhat',
                        textAlign: TextAlign.center),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.star, size: 10),
                          Icon(Icons.star, size: 10),
                          Icon(Icons.star, size: 10),
                          Icon(Icons.star, size: 10),
                          Icon(Icons.star, size: 10),
                          SizedBox(height: 16),
                          Text('137 Reviews')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildItem(name: 'Tu lanh', desc: '35M', icon: Icons.fax),
                          _buildItem(name: 'TV', desc: '3M', icon: Icons.tv),
                          _buildItem(name: 'TikTok', desc: '12M', icon: Icons.android)
                        ],)
                    ]
                  ),
                ),
                Expanded(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ienSG-CR_Y-lpTEnCmlTTKFGI6rTSCs03G-kb3mV6w&s=10',
                    fit: BoxFit.contain,),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
      bottomNavigationBar: Text('Bottom Navigation'),
      floatingActionButton: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    );
  }

  Widget _buildItem({required String name, required String desc, required IconData icon}){
    return Column(
      children: [
        Icon(icon),
        Text(name),
        Text(desc),
      ]
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
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Layout Example')),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.blue,
              child: Text('Header',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star, size: 50, color: Colors.amber),
                Icon(Icons.favorite, size: 50, color: Colors.red),
                Icon(Icons.settings, size: 50, color: Colors.grey),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.greenAccent,
                child: Center(child: Text('Expanded Content')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Avatar Example'),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://example.com/avatar.png'),
            backgroundColor: Colors.grey[300],
            foregroundColor: Colors.blue,
            child: Text('JD'),
          ),
        ),
      ),
    );
  }
}

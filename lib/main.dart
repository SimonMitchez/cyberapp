import 'package:cyberapp/screens/home_page.dart';
import 'package:cyberapp/screens/profile.dart';
import 'package:cyberapp/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:cyberapp/screens/login.dart';
import 'package:cyberapp/screens/avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cyber',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 113, 54, 230)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

import 'package:cyberapp/screens/home_page.dart';
import 'package:cyberapp/screens/profile.dart';
import 'package:cyberapp/screens/avatar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscured = true;

  void _openHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => HomePage(),
      ),
    );
  }

  void_openRegisterPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => HomePage(),
      ),
    );
  }

  void_openProfilePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => ProfilePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Navigate to profile page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Show notifications
              (context);
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 87, 203, 200),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 100.0,
                ),
                SizedBox(
                  height: 1.0,
                ),
                Text('Welcome'),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 65, 199, 83),
                  foregroundColor: Colors.blue,
                  child: Text('MVP'),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    prefixIcon: Icon(Icons.person_4),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(_isObscured
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter PhoneNumber',
                    prefixIcon: Icon(Icons.call),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                FloatingActionButton(
                  onPressed: _openHomePage,
                  child: Text("Login"),
                  backgroundColor: Colors.white,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Hello',
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Cyber',
                      ),
                      TextSpan(text: 'Pilad Enterprises!'),
                    ],
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Don't have an account? Register",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

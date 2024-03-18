import 'package:flutter/material.dart';
import 'package:heiko_flashcard/pages/HomePage.dart';
import 'package:heiko_flashcard/pages/LoginPage.dart';



import 'pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard app',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage()
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

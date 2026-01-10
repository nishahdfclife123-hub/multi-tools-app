import 'package:flutter/material.dart';

void main() {
  runApp(const MultiToolsApp());
}

class MultiToolsApp extends StatelessWidget {
  const MultiToolsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi Tools App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multi Tools App')),
      body: const Center(
        child: Text(
          'App Ready 🚀\nNext: Tools Screens',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

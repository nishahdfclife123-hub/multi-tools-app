import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: const Text('Multi Tools App'),
    centerTitle: true,
  ),
  body: GridView.count(
    crossAxisCount: 2,
    padding: const EdgeInsets.all(12),
    children: [
      toolCard(
        context,
        'Calculator',
        Icons.calculate,
        () {},
      ),
      toolCard(
        context,
        'Age Calculator',
        Icons.cake,
        () {},
      ),
      toolCard(
        context,
        'EMI Calculator',
        Icons.payments,
        () {},
      ),
      toolCard(
        context,
        'BMI Calculator',
        Icons.fitness_center,
        () {},
      ),
    ],
  ),
);
Widget toolCard(
  BuildContext context,
  String title,
  IconData icon,
  VoidCallback onTap,
) {
  return InkWell(
    onTap: onTap,
    child: Card(
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String input = '';
  String result = '0';

  void onButtonClick(String value) {
    setState(() {
      if (value == 'C') {
        input = '';
        result = '0';
      } else if (value == '=') {
        try {
          result = _calculate(input);
        } catch (e) {
          result = 'Error';
        }
      } else {
        input += value;
      }
    });
  }

  String _calculate(String exp) {
    // very basic calculator logic
    final expression = exp.replaceAll('×', '*').replaceAll('÷', '/');
    final parsed = double.parse(
      expression.split(RegExp(r'[+\-*/]')).reduce((a, b) => a),
    );
    return parsed.toString();
  }

  Widget buildButton(String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => onButtonClick(text),
        child: Text(text, style: const TextStyle(fontSize: 20)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.centerRight,
            child: Text(
              input + '\n$result',
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 24),
            ),
          ),
          const Divider(),
          Row(children: ['7', '8', '9', '/'].map(buildButton).toList()),
          Row(children: ['4', '5', '6', '*'].map(buildButton).toList()),
          Row(children: ['1', '2', '3', '-'].map(buildButton).toList()),
          Row(children: ['0', 'C', '=', '+'].map(buildButton).toList()),
        ],
      ),
    );
  }
}

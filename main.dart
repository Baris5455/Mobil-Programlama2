import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChangerScreen(),
    );
  }
}

class ColorChangerScreen extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  Color _backgroundColor = Color.fromARGB(255, 236, 216, 44);

  void _changeColor() {
    setState(() {
      _backgroundColor = _backgroundColor == Color.fromARGB(255, 236, 216, 44)
          ? const Color.fromARGB(255, 14, 21, 215)
          : const Color.fromARGB(255, 236, 216, 44);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: _changeColor,
          child: const Text('Rengi Değiştir'),
        ),
      ),
    );
  }
}
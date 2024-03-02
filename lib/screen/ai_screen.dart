import 'package:flutter/material.dart';

class AIScreen extends StatelessWidget {
  const AIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Ai Screen'),
      ),
      body: Center(
        child: Text(
          'Ai Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

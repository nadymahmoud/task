import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Add Screen'),
      ),
      body: Center(
        child: Text(
          'Add  Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

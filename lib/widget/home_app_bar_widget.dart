import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'enjoyers',
          style: TextStyle(
              color: Colors.amber,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Kanit'),
        ),
        Spacer(),
        Badge(
          label: Text('1'),
          textColor: Colors.black,
          backgroundColor: Colors.amber,
          child: Icon(
            Icons.notifications_none_outlined,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Badge(
          label: Text('3'),
          textColor: Colors.black,
          backgroundColor: Colors.amber,
          child: Icon(
            Icons.chat_bubble_outline,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.emoji_emotions_outlined,
          color: Colors.grey,
        ),
      ],
    );
  }
}

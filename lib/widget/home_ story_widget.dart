import 'package:flutter/material.dart';

class HomeStoryWidget extends StatelessWidget {
  HomeStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('assests/image/Personnel.jpg')),
                    Positioned(
                        bottom: 10,
                        right: 50,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.amber),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
              );
            } else {
              return Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assests/image/Personnel.jpg')),
                  Positioned(
                      bottom: 10,
                      right: 40,
                      child: Text(
                        'first \n name  ',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              );
            }
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 12,
            );
          },
          itemCount: 12),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LastestWidget extends StatelessWidget {
  const LastestWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.centerLeft,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      image,
                    )),
                Positioned(
                    top: 20,
                    right: 15,
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.message,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '247',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white38),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '300',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white38),
                        ),
                      ],
                    )),
                Positioned(
                    bottom: 50,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assests/image/Personnel.jpg'))),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Nataile Willims',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'The Perfect Pepperoni , a slice is \n Heaven on Earth',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    )),
              ],
            );
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

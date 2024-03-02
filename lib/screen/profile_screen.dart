import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static GlobalKey<ScaffoldState> sczffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sczffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Profile Screen   '),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            sczffoldKey.currentState!.showBottomSheet((context) => Container(
                  child: MeunWidget(),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(12),
                      color: Colors.grey.withOpacity(.7)),
                ));
          },
          child: Text(
            'cleck to show menu',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class MeunWidget extends StatelessWidget {
  const MeunWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Menu',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(
              FontAwesomeIcons.x,
              size: 15,
              color: Colors.white,
            )
          ],
        ),
        Row(
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.bell,
                    color: Colors.white,
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(153, 252, 246, 246).withOpacity(.6),
                  borderRadius: BorderRadius.circular(12)),
              height: 40,
              width: MediaQuery.of(context).size.width * .5,
            )
          ],
        ),
      ],
    );
  }
}

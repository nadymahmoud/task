import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_screen_task/screen/home_screen.dart';
import 'package:home_screen_task/widget/patisserie_widget.dart';
import 'package:home_screen_task/widget/vacations_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget(
      {super.key, required this.lastestColor, required this.vacationsColor});
  final Color lastestColor;
  final Color vacationsColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ));
          },
          child: Text(
            'Lastest',
            style: TextStyle(
                color: lastestColor, fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ),
        TypeHeaderWidget(
          vacations: vacationsColor,
        ),
      ],
    );
  }
}

class TypeHeaderWidget extends StatelessWidget {
  const TypeHeaderWidget({super.key, required this.vacations});
  final Color vacations;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return VacationsWidget();
              },
            ));
          },
          child: Text(
            'Vacations',
            style: TextStyle(
              color: vacations,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            position: PopupMenuPosition.under,
            color: Colors.grey.withOpacity(.2),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                  textStyle: TextStyle(color: Colors.white),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.angleLeft,
                        color: Colors.white54,
                      ),
                      Text(
                        'Restorant',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )),
              PopupMenuItem(
                  textStyle: TextStyle(color: Colors.white),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        FontAwesomeIcons.circle,
                        size: 12,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Croissant',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )),
              PopupMenuItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PatisserieWidget();
                    }));
                  },
                  textStyle: TextStyle(color: Colors.amber),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        FontAwesomeIcons.circle,
                        size: 12,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Patisserie',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.amber,
                        size: 12,
                      )
                    ],
                  )),
              PopupMenuItem(
                  textStyle: TextStyle(color: Colors.white),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        FontAwesomeIcons.circle,
                        size: 12,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Gourmet',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )),
              PopupMenuItem(
                  textStyle: TextStyle(color: Colors.white),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        FontAwesomeIcons.circle,
                        size: 12,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Michelin',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )),
            ],
            child: Icon(
              FontAwesomeIcons.angleDown,
              size: 12,
              color: Colors.grey,
            ),
          ),
        ),
        Text(
          'Sports',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(
            FontAwesomeIcons.angleDown,
            size: 12,
            color: Colors.grey,
          ),
        ),
        Text(
          'Navidad',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(
            FontAwesomeIcons.angleDown,
            size: 12,
            color: Colors.grey,
          ),
        ),
//PopupMenuButton(itemBuilder: itemBuilder)
      ],
    );
  }
}

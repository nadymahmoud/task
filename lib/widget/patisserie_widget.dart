import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_screen_task/screen/ai_screen.dart';
import 'package:home_screen_task/screen/home_screen.dart';
import 'package:home_screen_task/widget/header_and_type_widget.dart';
import 'package:home_screen_task/widget/home_%20story_widget.dart';
import 'package:home_screen_task/widget/home_app_bar_widget.dart';
import 'package:home_screen_task/widget/lestest_widget.dart';
import 'package:home_screen_task/widget/vacations_widget.dart';

class PatisserieWidget extends StatelessWidget {
  const PatisserieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: HomeAppBarWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              SliverToBoxAdapter(
                child: HomeStoryWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 18,
                ),
              ),
              SliverToBoxAdapter(
                child: HeaderWidget(
                  lastestColor: Colors.grey,
                  vacationsColor: Colors.white,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 12,
                ),
              ),
              SliverToBoxAdapter(
                child: LastestWidget(
                  image: 'assests/image/patisserie.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
          child: Icon(
            FontAwesomeIcons.angleRight,
            size: 12,
            color: Colors.white,
          ),
        ),
        Text(
          'Restaurant',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(
            FontAwesomeIcons.angleRight,
            size: 12,
            color: Colors.white,
          ),
        ),
        Text(
          'Patisserie',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return VacationsWidget();
                },
              ));
            },
            child: Icon(
              FontAwesomeIcons.xmark,
              size: 12,
              color: Colors.amber,
            ),
          ),
        ),
//PopupMenuButton(itemBuilder: itemBuilder)
      ],
    );
  }
}

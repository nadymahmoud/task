import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_screen_task/screen/ai_screen.dart';
import 'package:home_screen_task/widget/header_and_type_widget.dart';
import 'package:home_screen_task/widget/home_%20story_widget.dart';
import 'package:home_screen_task/widget/home_app_bar_widget.dart';
import 'package:home_screen_task/widget/lestest_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  lastestColor: Colors.amber,
                  vacationsColor: Colors.grey,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 12,
                ),
              ),
              SliverToBoxAdapter(
                child: LastestWidget(
                  image: 'assests/image/pizza.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

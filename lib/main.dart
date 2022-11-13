import 'dart:html';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 28.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/Menu.svg'),
                Text(
                  'Home',
                  style: kPoppinsSemiBold.copyWith(fontSize: 16.0),
                ),
                SvgPicture.asset('assets/Search.svg')
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Discover the most\nmodern furniture',
              style: kPoppinsProMedium.copyWith(fontSize: 22.0),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        DefaultTabController(
          length: 5,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: kButton,
                unselectedBackgroundColor: Colors.transparent,
                // unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Living Room",
                  ),
                  Tab(
                    text: "Bedroom",
                  ),
                  Tab(
                    text: "Dining Room",
                  ),
                  Tab(
                    text: "Kitchen",
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Recommended Furnitures',
          style: kPoppinsProMedium.copyWith(fontSize: 16.0),
        )
      ]),
    ));
  }
}

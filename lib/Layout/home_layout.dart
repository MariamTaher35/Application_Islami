import 'package:app_2/modules/hadeth/hadeth.dart';
import 'package:app_2/modules/quran/quran.dart';
import 'package:app_2/modules/radio/radio.dart';
import 'package:app_2/modules/sebha/sebha.dart';
import 'package:app_2/modules/setting/setting.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  static const String routeName = "Home_Layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [Quran(), Hadeth(), Sebha(), RadioApp(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_light.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
      ),
    );
  }
}

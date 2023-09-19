import 'package:flutter/material.dart';
import 'package:app_2/modules/hadeth/hadeth.dart';
import 'package:app_2/modules/quran/quran.dart';
import 'package:app_2/modules/radio/radio.dart';
import 'package:app_2/modules/sebha/sebha.dart';
import 'package:app_2/modules/setting/setting.dart';

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
          title: Text("إسلامي"),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFB7935F),
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 32,
          ),
          selectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 28,
          ),
          unselectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                label: "قرآن"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
                label: "أحاديث"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "سبحة"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "راديوا"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "تعديل"),
          ],
        ),
      ),
    );
  }
}

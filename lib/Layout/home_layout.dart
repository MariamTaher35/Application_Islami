import 'package:app_2/modules/hadeth/hadeth_view.dart';
import 'package:app_2/modules/quran/quran.dart';
import 'package:app_2/modules/sebha/sebha.dart';
import 'package:app_2/modules/setting/setting.dart';
import 'package:app_2/providers/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  static const String routeName = "Home_Layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    Quran(),
    HadethView(),
    Sebha(),
    SettingView()
  ];

  @override
  Widget build(BuildContext context) {
    var appprovider = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(appprovider.Background()), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
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
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: AppLocalizations.of(context)!.setting),
          ],
        ),
      ),
    );
  }
}

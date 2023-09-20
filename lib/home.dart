import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/tabs/ahadeath_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/settings_tab.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currantIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadeathTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/main_bg.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("ISLAMI", style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currantIndex,
            onTap: (value) {
              currantIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_quran.png"),
                    size: 30,
                  ),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_sebha.png"),
                    size: 30,
                  ),
                  label: "Sebha",
                  backgroundColor: MyThemeData.primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_radio.png"),
                    size: 30,
                  ),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_hadeth.png"),
                    size: 30,
                  ),
                  label: "Ahadeath"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_settings.png"),
                    size: 30,
                  ),
                  label: "Settings"),
            ],
          ),
          body: tabs[currantIndex],
        ),
      ],
    );
  }
}

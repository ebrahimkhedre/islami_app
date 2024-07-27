import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:islamiapp/modules/hadeth/hadeth-view.dart';
import 'package:islamiapp/modules/quran/quran-view.dart';
import 'package:islamiapp/modules/radio/radio-view.dart';
import 'package:islamiapp/modules/settings/settings-view.dart';
import 'package:islamiapp/modules/tasbeh/tasbeh-view.dart';

class LayOutView extends StatefulWidget {
  static const String routename= "layout";
  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {
  int selectedindex = 0;
  List<Widget> screenlist = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/home background.png"),
       fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي",
          ),

        ),
        body: screenlist[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },

          items:  [
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/icons/quran_icn.png")), label: "Quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/hadeth_icn.png")), label: "Hadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/sebha_icn.png")), label: "Tasbeh"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/icons/radio_icn.png")), label: "Radio"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting" ),

          ],
        ),
      ),
    );
  }
}

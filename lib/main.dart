import 'package:flutter/material.dart';
import 'package:islamiapp/core/aplication-theme-manager.dart';
import 'package:islamiapp/layout/layout-view.dart';
import 'package:islamiapp/modules/hadeth/hadith-details-view.dart';
import 'package:islamiapp/modules/quran/Widgets/quran-details-view.dart';
import 'package:islamiapp/modules/splash/splash-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AplicationThemeManager.lightThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        SpalshView.routename : (context) => SpalshView(),
        LayOutView.routename : (context) => LayOutView(),
        QuranDetailsView.routeName : (context) => QuranDetailsView(),
        HadithDetailsView.routename : (context) => HadithDetailsView(),

      },
    );
  }
}


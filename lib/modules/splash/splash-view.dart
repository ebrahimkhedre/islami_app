import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamiapp/layout/layout-view.dart';

class SpalshView extends StatefulWidget {
  static const String routename= "/";
  const SpalshView({super.key});

  @override
  State<SpalshView> createState() => _SpalshViewState();
}

class _SpalshViewState extends State<SpalshView> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LayOutView.routename);
    },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return
      Image.asset("assets/images/splash screen.png",
        fit: BoxFit.cover,
      );


  }
}

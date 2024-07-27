import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/icons/rardio-header.png",
            scale: 1.2,),
        ]
    );
  }
}

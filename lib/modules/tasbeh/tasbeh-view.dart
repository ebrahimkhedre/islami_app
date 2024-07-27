import 'package:flutter/material.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/icons/tasbeh-header_hdpi.png",
            scale: 1.2,),
        ]
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islamiapp/modules/quran/quran-view.dart';

class SurahTitleWidget extends StatelessWidget {
   final SurahData data;

  const SurahTitleWidget({super.key,
    required this.data
    });


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return   Row(
      children: [
        Expanded(
          child: Text(data.surahNumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        SizedBox( height: 40, child: VerticalDivider(
          thickness: 2,
        )),
        Expanded(
          child: Text(data.surahName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        )
      ],
    );
  }
}

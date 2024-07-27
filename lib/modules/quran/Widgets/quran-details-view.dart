import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamiapp/modules/quran/quran-view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quranDetails";
  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as SurahData;
    var theme = Theme.of(context);
    if(content.isEmpty) loadData(data.surahNumber);
    return Container(
     decoration: BoxDecoration(
       image: DecorationImage(image: AssetImage("assets/images/home background.png"),
       fit: BoxFit.cover),
   ),
      child: Scaffold(
    appBar: AppBar(
    title: Text("إسلامي",),
      ),
        body:  Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 80,
          ),
          padding: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 20, ),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(12)
          ),
         child:
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" سوؤة ${data.surahName}",
                    style: theme.textTheme.bodyMedium,),
                  SizedBox(width: 10,),
                  Icon(Icons.play_circle_fill_outlined),
                ],),
              Divider(),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) =>
                  Text(
                   "{${index+1}} ${versesList[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall?..copyWith(height: 1.2),),
                 itemCount: versesList.length, ),
              )


            ],
          ),
        ),
    )

    );

  }

  String content = "";
  List<String> versesList = [];

  Future<void> loadData(String surahNumber) async {
    content = await rootBundle.loadString("assets/files/$surahNumber.txt");
    setState(() {});
    versesList= content.split("\n");

    print(content);
  }

}

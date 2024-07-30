import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/modules/hadeth/hadith-details-view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => HadethViewState();
}

class HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if(datalist.isEmpty) loadHadithData();

    return Column(
        children: [
          Image.asset("assets/icons/hadeth-header_hdpi.png",
          scale: 1.2,),
          Divider(),
          Text("الأحاديث",
          style: theme.textTheme.bodyMedium,),
          Divider(),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context,
                HadithDetailsView.routename,
                arguments: datalist[index]);

              },
              child : Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  textAlign: TextAlign.center,
                  datalist[index].title
                ),
              ),
            ),
            itemCount: datalist.length,),
          )

        ]
    );
  }

   List<HadithData> datalist = [];

   Future<void> loadHadithData () async {
    String content =  await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadithData = content.split("#");

    for(int i = 0 ; i < allHadithData.length ; i++){
      String singleHadith = allHadithData[i].trim();
      int titleLength = singleHadith.indexOf("\n");
      String title = singleHadith.substring(0 , titleLength);
      String body = singleHadith.substring(titleLength+1);
      HadithData hadithdata = HadithData(title: title, body: body);
      datalist.add(hadithdata);
    }
    setState(() {});

  }

}
class HadithData {

  final String title;
  final String body;

  HadithData({required this.title, required this.body});

}

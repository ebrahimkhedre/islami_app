import 'package:flutter/material.dart';
import 'package:islamiapp/modules/hadeth/hadeth-view.dart';

class HadithDetailsView extends StatelessWidget {
  static const String routename = "HadithDetails";
  const HadithDetailsView( {super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as HadithData ;
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
                Text( data.title,
                  style: theme.textTheme.bodyMedium,),
                SizedBox(width: 10,),
                Divider(),
                Expanded(
                  child: ListView.builder(itemBuilder: (context, index) =>
                      Text(
                        data.body,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall?..copyWith(height: 1.2),),
                    itemCount: 6, ),
                )


              ],
            ),
          ),
        )

    );

  }
}

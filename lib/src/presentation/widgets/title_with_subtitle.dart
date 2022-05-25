import 'package:flutter/material.dart';
import 'package:project_poputchik_kg/src/core/colors.dart';
class TitleWithSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleWithSubtitle({Key? key,required this.title,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text(title,style:const TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: kColorButton),),
        const SizedBox(height: 15),
          Text(subtitle,style:const TextStyle(fontSize: 20,color: kColorSubtitle),),
      ],
    ),);
  }
}

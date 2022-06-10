import 'package:flutter/material.dart';
import 'package:project_poputchik_kg/src/core/colors.dart';
class TitleWithSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleWithSubtitle({Key? key,required this.title,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Text(title,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorLight),),
        const SizedBox(height: 15),
          Text(subtitle,style: TextStyle(fontSize: 17,color: Theme.of(context).primaryColorLight),),
      ],
    ),);
  }
}

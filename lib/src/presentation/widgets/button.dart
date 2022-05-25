import 'package:flutter/material.dart';
class MainButton extends StatelessWidget {
  final String name;
  final Function onPressed;

   MainButton({Key? key,required this.name,required this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.85,
      height: 60,
      child: ElevatedButton(onPressed:onPressed(), child: Text(name)),
    );
  }
}

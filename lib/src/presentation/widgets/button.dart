import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String name;
  final Function onPressed;

  MainButton({Key? key, required this.name, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 60,
      color: Theme.of(context).primaryColorLight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Theme.of(context).primaryColorLight),
          onPressed: onPressed(),
          child: Text(
            name,
            style: TextStyle(color: Theme.of(context).primaryColor),
          )),
    );
  }
}

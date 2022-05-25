import 'package:flutter/material.dart';
import 'package:project_poputchik_kg/src/core/constants.dart';
class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kMaterialAppTitle),),

      body: Center(child: Container(child: Text("aaaaaaaaaa"),)),
    );
  }
}


import 'package:flutter/material.dart';
import 'src/core/colors.dart';
import 'src/core/constants.dart';
import 'src/presentation/widgets/button.dart';
import 'src/presentation/widgets/title_with_subtitle.dart';
import 'testpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:kColorBackground,
        brightness: Brightness.light,
        scaffoldBackgroundColor: kColorWhite,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void onPressed(){setState(() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TestPage()));
  });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: Padding(

        padding: EdgeInsets.only(left: 10,right: 10),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,


          children: <Widget>[
           Image.asset("assets/images/p3.jpg"),
            const TitleWithSubtitle(title: "Searching companion", subtitle: "A perso temporan whorily "
                "and A perso temporan whorily "
                "andA perso temporan whorily and "),
            const SizedBox(height: 20,),

            MainButton(name: "GO go",onPressed:()=>onPressed,),



          ],
        ),
      ),

    );
  }
}

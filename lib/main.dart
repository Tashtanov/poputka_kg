import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_poputchik_kg/src/config/routes/app_routes.dart';
import 'package:project_poputchik_kg/src/presentation/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'src/config/routes/app_name_of_routes.dart';
import 'src/core/colors.dart';
import 'src/core/constants.dart';
import 'src/presentation/widgets/button.dart';
import 'src/presentation/widgets/title_with_subtitle.dart';
import 'testpage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>ThemeProvider(),
    builder: (context,_){
      final themeProvider=Provider.of<ThemeProvider>(context);
      return
      MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,

      initialRoute: Routes.entry,
      onGenerateRoute: AppRoutes.onGenarateRoutes,
      home: const MyHomePage(),
    );
  });
}}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void onPressed() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const TestPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/p3.jpg"),
              const TitleWithSubtitle(
                  title: "Searching companion",
                  subtitle: "A perso temporan whorily "
                      "and A perso temporan whorily "
                      "andA perso temporan whorily and "),
              const SizedBox(
                height: 20,
              ),
              MainButton(
                name: "GO go",
                onPressed: () => onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

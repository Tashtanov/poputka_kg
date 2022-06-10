import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_poputchik_kg/src/core/constants.dart';
import 'package:project_poputchik_kg/src/presentation/theme/theme_provider.dart';

import 'src/presentation/pages/settingpage.dart';
import 'src/presentation/widgets/change_themebuttonwidget.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool isSwitched = false;
  String firstname = "Options ";
  String secindname = "Options2 ";
  String thirdname = "Options3 ";
  int selecteditem = 0;

  void onTapHandler(int index) {
    setState(() {
      selecteditem = index;
    });
  }

  Widget getBody() {
    if (selecteditem == 0) {
      return MyTrips();
    }
    if (selecteditem == 1) {
      return AddTrip();
    }
    if (selecteditem == 2) {
      return MyHome();
    } else
      return Container(
        child: Text("hello"),
      );
  }

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == MyTheme.darkTheme
        ? "Dark Theme"
        : "Light Theme";
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).primaryColor,
      //   actions: [
      //     // Theme(
      //     //   data: Theme.of(context).copyWith(
      //     //     iconTheme: IconThemeData(color: Colors.white,
      //     //
      //     //     ),
      //     //     dividerColor: Colors.white,
      //     //     textTheme: TextTheme().apply(bodyColor: Colors.white)
      //     //   ),
      //     //   child: PopupMenuButton<int>(
      //     //     color: Colors.green,
      //     //
      //     //       onSelected: <int>(item) => onSelected(context, item),
      //     //       itemBuilder: (contex) =>
      //     //       [
      //     //         PopupMenuItem<int>(child: Text(firstname), value: 0,),
      //     //         PopupMenuItem<int>(value: 1, child: Text(secindname),),
      //     //          PopupMenuDivider(height:15 ,),
      //     //         PopupMenuItem<int>(child: Text(thirdname), value: 2,),
      //     //       ]),
      //     // )
      //
      //   ],
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                ChangeThemeButtonWidget(),
              ],
            ),
            Text(
              "Hello $text",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            getBody(),
            //BottomSheet(onClosing: onClosing, builder: builder)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selecteditem,
        iconSize: 35.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.car_repair), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
        ],
        onTap: (int index) {
          onTapHandler(index);
        },

      ),
    );
  }
}

class MyTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("My Trips"),
    );
  }
}

class AddTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Add Trip"),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("My Home"),
    );
  }
}

// void onSelected(BuildContext context, int item) {
//   switch (item) {
//     case 0:
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => SettingPage()));
//       break;
//   }
// }

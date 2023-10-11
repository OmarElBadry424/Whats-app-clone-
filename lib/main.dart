

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ChatPage.dart';
import 'package:whatsapp_ui/SettingsPage.dart';
import 'package:whatsapp_ui/pages/HomePage.dart';
import 'package:whatsapp_ui/wdgets/CallsWidget.dart';
import 'package:whatsapp_ui/wdgets/ChatWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override

//   void initState() {
//     Timer(
//         Duration(seconds: 2),(){
//       Navigator.pushAndRemoveUntil(context , MaterialPageRoute(builder: (context)=> ChatWidget()), (route) => false);
//     }
//     );
//
//
//     super.initState();
//   }
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false,
//
//       home: HomePage(),
//     );
//   }
// }
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// // return Scaffold(
// //   body: Column(
// //
// //   ),
// // );
// //   }
// //
// // }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            color: Color(0xFF075E55)
        ),
        // to transperant the bottom sheet on chat page
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => HomePage(),
        "settingsPage": (context) => SettingsPage(),
        "ChatPage": (context) => ChatPage(),

      },
    );
  }
}

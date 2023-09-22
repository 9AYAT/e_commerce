import 'package:e_commerce/Screen.dart';
import 'package:e_commerce/model/Screenmodel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //get screenmodel => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      routes: {
      Screen.routeName:(context)=> Screen(screenModel:ScreenModel(image: '', text: ''))

      },initialRoute: Screen.routeName,
    );}}
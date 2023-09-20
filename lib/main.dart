import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: HomeLayout.routeName,
        routes: {HomeLayout.routeName: (context) => HomeLayout()},
        debugShowCheckedModeBanner: false,
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme);
  }
}

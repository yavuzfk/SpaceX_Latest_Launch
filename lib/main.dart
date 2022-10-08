
import 'package:flutter/material.dart';
import 'package:spacex_latest_launch/ui/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.3),

        textTheme: ThemeData.dark().textTheme.copyWith(
            subtitle1: const TextStyle(
              fontSize: 26,
            ),
            subtitle2: const TextStyle(
              fontSize: 14,
              wordSpacing: 2,
              height: 1.3
            )),
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(30)))),
      ),
      home: const HomePage(),
    );
  }
}

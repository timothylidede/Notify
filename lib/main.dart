import 'package:flutter/material.dart';
import 'package:notify/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
            primaryColor: Colors.red,
            brightness: Brightness.light
      ),
      darkTheme: ThemeData(
          primaryColor: Colors.red,
          brightness: Brightness.light
      ),
      home: const HomePage()
    );
  }
}
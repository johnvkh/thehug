// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:the_hug_menu/src/Screen/HomePage.dart';
import 'Screen/SplashScreen.dart';
import 'Utility/Utils.dart';

final Map<String, WidgetBuilder> map = {
  '/splash': (BuildContext context) => const SplashScreen(),
  '/home': (BuildContext context) => const HomePage(),
};

String initialRoute = '/splash';
bool isFirstLaunch = true;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Hug',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Utils().backgroundColor,
      ),
      routes: map,
      initialRoute: initialRoute,
    );
  }
}

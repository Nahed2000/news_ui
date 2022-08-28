import 'package:flutter/material.dart';

import 'screen/home_screen.dart';
import 'screen/lunch_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen': (context) => const LunchScreen(),
        '/home_screen': (context) => const HomeScreen(),
      },
    );
  }
}

import 'package:design_patterns/factory_method.dart';
import 'package:design_patterns/home_page.dart';
import 'package:design_patterns/singleton.dart';
import 'package:design_patterns/singleton3.dart';
import 'package:design_patterns/singleton_another_way.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // We are running this function 4 times but the private constructor will run only one time thst is when instance is null initially
    Singleton3? singleton5 = Singleton3();
    Singleton1? singleton1 = Singleton2.instance;
    Singleton1? singleton2 = Singleton1.getInstance();
    Singleton1? singleton3 = Singleton1.getInstance();
    Singleton1? singleton4 = Singleton1.getInstance();
    return const MaterialApp(
      title: "Factory Method Pattern",
      home: HomePage(),
    );
  }
}

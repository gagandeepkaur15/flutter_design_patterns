import 'dart:io';

import 'package:design_patterns/flutter_factory_method.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //To convert this platform to widget type since it is inside build method we use build function on it
          Platform.isAndroid ? PlatformButton(TargetPlatform.android).build(
            () {
              print("Android button pressed");
            },
            const Text('Click'),
          ): 
          PlatformButton(TargetPlatform.android).build(
            () {
              print("Android button pressed");
            },
            const Text('Click'),
          ),
          //Or use Theme.of(context).platform which returns platform which we are on
          //Instead of using if and else conditions4 
          PlatformButton(Theme.of(context).platform).build(
            () {
              print("Button Pressed");
            },
            const Text('Click'),
          ),
        ],
      ),
    ); 
  }
}

import 'package:design_patterns/singleton_with_abstract%20factory.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          //We have created a button and two loading indicators but the instance is created only once
          children: [
            AbstractFactoryImplSingleton.instance.buildIndicator(context),
            AbstractFactoryImplSingleton.instance.buildIndicator(context),
            AbstractFactoryImplSingleton.instance.buildButton(
              context,
              'Click me',
              () {},
            )
          ],
        ));
  }
}

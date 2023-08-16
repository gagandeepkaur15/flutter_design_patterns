import 'package:design_patterns/prototype1.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    Person person = const Person(
      name: 'Gagandeep',
      lastName: 'Kaur',
      age: 20,
    );
    Person person1 = person.clone();
    //Both of the following should print same answer
    print(person.name);
    print(person1.name);
    return Scaffold(
        appBar: AppBar(),
        body: const Column(
          //We have created a button and two loading indicators but the instance is created only once
          children: [],
        ));
  }
}

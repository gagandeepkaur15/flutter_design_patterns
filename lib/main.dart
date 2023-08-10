import 'package:design_patterns/factory_method.dart';
import 'package:design_patterns/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  Employee employee = Employee(EmployeeType.lead);
  //FOR SEPARATE CLASS FOR FACTORY METHOD
  // Employee employee = FactoryMethod.getEmployee('hr');

  //employee=Programmer() -> This will now execute all employee functions even though we used lead in declaration

  employee.work();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Factory Method Pattern",
      home: HomePage(),
    );
  }
}

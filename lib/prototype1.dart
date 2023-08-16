import 'package:flutter/material.dart';

// class Person {
//   String name;
//   String lastName;
//   int age;

//   Person({
//     required this.name,
//     required this.lastName,
//     required this.age,
//   });

//   //Prototype design pattern
//   Person clone() => Person(name: name, lastName: lastName, age: age);
// }

//-----------------------------------------------------------------------------

//Also works if class is immutable

@immutable
class Person {
  final String name;
  final String lastName;
  final int age;

  const Person({
    required this.name,
    required this.lastName,
    required this.age,
  });

  //We ususlly have a copy with class for immutable classes
  //Since we cannot change these values directly we use copyWith function for that purpose
  Person copyWith({
    String? name,
    String? lastName,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
    );
    // the operator ?? means that if the user doesn't specify any field say name in copyWith class then we take the initial name or the class's name property
  }

  //Prototype design pattern
  Person clone() => Person(name: name, lastName: lastName, age: age);

  //With copyWith function
  // Person clone() => copyWith(name: name, lastName: lastName, age: age);
}

//-----------------------------------------------------------------------------

/*
Person person = Person(name: 'Gagandeep', lastName: 'Kaur', age: 20);
*/

//-----------------------------------------------------------------------------

//Before prototype design pattern

/*
Person person1 = Person(name: 'Gagandeep', lastName: 'Kaur', age: 20);
*/

//but if its coming from a user input or an API then

/*
Person person2 =
    Person(name: person.name, lastName: person.lastName, age: person.age);
*/

//But if we want to copy hundreds of instances then its difficult by this method
//Also if we want to mention some other property say nation in Person class then we will have to add it in every instance manually
//Thus we use prototype design pattern

//-----------------------------------------------------------------------------

//After prototype design pattern

/*
Person person3 = person.clone();
*/

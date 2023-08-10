//FACTORY METHOD EXAMPLE

enum EmployeeType {
  programmer,
  hr,
  lead,
}

abstract class Employee {
  void work();
  //Factory method pattern

  factory Employee(EmployeeType type) {
    switch (type) {
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hr:
        return HRManager();
      case EmployeeType.lead:
        return Lead();
      default:
        return Programmer();
    }
  }

  //OR take String instead of enum

  // factory Employee(String type) {
  //   switch (type) {
  //     case 'programmer':
  //       return Programmer();
  //     case 'hr':
  //       return HRManager();
  //     case 'lead':
  //       return Lead();
  //     default:
  //       return Programmer();
  //   }
  // }
}

//The above factory method can also be applied by creating separate class
//instead of using it in the abstact class itself
// abstract class Employee {
//   void work();
// }

class Programmer implements Employee {
  @override
  void work() {
    print("Developing an app");
  }
}

class HRManager implements Employee {
  @override
  void work() {
    print("Recruiting people");
  }
}

class Lead implements Employee {
  @override
  void work() {
    print("Leading the people");
  }
}

//Seaparate class for factory method 
// class FactoryMethod{
//   //Factory method pattern
//   static Employee getEmployee(String type) {
//     switch (type) {
//       case 'programmer':
//         return Programmer();
//       case 'hr':
//         return HRManager();
//       case 'lead':
//         return Lead();
//       default:
//         return Programmer();
//     }
//   }
// }

//Since the above class is static we don't need to create the instance of class everytime we use it
//We can just do FactoryMethod.getEmployee and it should work
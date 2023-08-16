class Singleton1 {
  static Singleton1? _instance; //Instance of the class
  //Static because we can't use non-static variables in static method and this is used in getInstance


  //Privatised constructor to avoid making multiple instances
  //like Singleton1 singleton1 = Singleton1();
  Singleton1._internal(){
    print('Inside private constructor');
  }
  //or just
  // Singleton1._internal();


  //Function so that atleast one instance can be made
  static Singleton1? getInstance() {
    //Static to avoid creating an object and call this method directly by class name
    _instance ??= Singleton1._internal(); //If instance is null then create an instance
    return _instance;
  }
}

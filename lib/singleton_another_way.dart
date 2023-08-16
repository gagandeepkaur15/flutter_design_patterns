class Singleton2 {
  static Singleton2? _instance; //Instance of the class

  //Privatised constructor 
  Singleton2._internal(){
    print('Inside private constructor');
  }

  //Getter so that atleast one instance can be made
  static get instance {
    _instance ??= Singleton2._internal(); //If instance is null then create an instance
    return _instance;
  }
}

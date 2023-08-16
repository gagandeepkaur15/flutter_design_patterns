class Singleton3 {
  static Singleton3? _instance; //Instance of the class

  //Privatised constructor 
  Singleton3._internal(){
    print('Inside private constructor');
  }

  factory Singleton3(){
    if(_instance==null){
      _instance=Singleton3._internal();
    }
    return _instance!;
  }
}
 
import 'package:flutter/material.dart';
class Rating_Provider with ChangeNotifier{
  var Star1=Colors.grey;
  var Star2=Colors.grey;
  var Star3=Colors.grey;
  var Star4=Colors.grey;
  var Star5=Colors.grey;
  get star1=>Star1;
  get star2=>Star2;
  get star3=>Star3;
  get star4=>Star4;
  get star5=>Star5;
  Rate1(){
    Star1=Colors.amber;
    Star2=Colors.grey;
    Star3=Colors.grey;
    Star4=Colors.grey;
    Star5=Colors.grey;
    notifyListeners();
  }
  Rate2(){
    Star1=Colors.amber;
    Star2=Colors.amber;
    Star3=Colors.grey;
    Star4=Colors.grey;
    Star5=Colors.grey;

    notifyListeners();
  }
  Rate3(){
    Star1=Colors.amber;
    Star2=Colors.amber;
    Star3=Colors.amber;
    Star4=Colors.grey;
    Star5=Colors.grey;
    notifyListeners();
  }
  Rate4(){
    Star1=Colors.amber;
    Star2=Colors.amber;
    Star3=Colors.amber;
    Star4=Colors.amber;
    Star5=Colors.grey;
    notifyListeners();
  }
  Rate5(){
    Star1=Colors.amber;
    Star2=Colors.amber;
    Star3=Colors.amber;
    Star4=Colors.amber;
    Star5=Colors.amber;
    notifyListeners();
  }
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }

}
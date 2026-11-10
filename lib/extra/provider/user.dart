import 'package:flutter/widgets.dart';

class UserProvider extends ChangeNotifier{

  String name = "";
  String email = "";

  ///set Name
  void setName(String val){
    name = val;
    notifyListeners();
  }
  ///set Email
  void setEmail(String val){
    email = val;
    notifyListeners();
  }

  ///get Name
  String getName() => name;
  ///get Email
  String getEmail() => email;
}
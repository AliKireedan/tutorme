import 'package:flutter/material.dart';

class UserState with ChangeNotifier {
  var _user;
  var _firstname = '';
  var _lastname = '';
  bool _isActive = true;
  var _address = '';
  int _created_at = 0;
  var _phone_number = '';
  var _type = '';
  var _email = '';
  get user => _user;
  get userImage => _user.photoURL;
  get userFullName => _user.displayName;
  get userUID => _user.uid;

  get firstname => _firstname;
  get lastname => _lastname;
  get email => _email;
  get phone_number => _phone_number;
  get address => _address;
  get isActive => _isActive;
  get type => _type;

  void setUser(user) {
    _user = user;
    notifyListeners();
  }

  void setUserInfo(fireStoreUserData) {
    //getting firestore data everytime a profile lands
    _firstname = fireStoreUserData['firstname'];
    _isActive = fireStoreUserData['isActive'];
    _address = fireStoreUserData['address'];
    _created_at = fireStoreUserData['created_at'];
    _phone_number = fireStoreUserData['phone_number'];
    _type = fireStoreUserData['type'];
    _email = fireStoreUserData['email'];
    notifyListeners();
  }

  bool isAuthenticated() {
    return (_user == null) ? false : true;
  }

  void clearAuth() {
    _user = null;
    notifyListeners();
  }

  void setUserInfoRegistered(user) {
    _firstname = user['firstname'];
    _lastname = user['firstname'];
    _isActive = user['isActive'];
    _address = user['address'];
    _created_at = user['created_at'];
    _phone_number = user['phone_number'];
    _type = user['type'];
    _email = user['email'];
    notifyListeners();
  }
}

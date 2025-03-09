import 'package:flutter/material.dart';
import 'package:mobile/data/user.dart';

class AppProvider extends ChangeNotifier {
  String _name = '';
  String _photo = '';
  String _bornDate = '';
  bool _isAuthenticate = false;

  String get name => _name;
  String get photo => _photo;
  String get bornDate => _bornDate;
  bool get isAuthenticate => _isAuthenticate;

  void login(User user) {
    _name = user.name ?? '';
    _photo = user.photo ?? '';
    _bornDate = user.bornDate ?? '';
    _isAuthenticate = true;

    notifyListeners();
  }

  void logout() {
    _name = '';
    _photo = '';
    _bornDate = '';
    _isAuthenticate = false;

    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  bool _isAuthenticated = false;
  final List<Map<String, String>> _users = [];

  bool get isAuthenticated => _isAuthenticated;

  void login(String username, String password) {
    for (var user in _users) {
      if (user['username'] == username && user['password'] == password) {
        _isAuthenticated = true;
        notifyListeners();
        return;
      }
    }
    // Handle invalid login
  }

  void createAccount(String username, String password) {
    _users.add({'username': username, 'password': password});
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}

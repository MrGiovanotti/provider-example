import 'package:flutter/material.dart';
import 'package:provider_example/models/user.dart';

class UsersProvider with ChangeNotifier {
  List<User> _users = [];

  List<User> get users => _users;

  set addUser(User user) {
    _users.add(user);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:ola_mundo/models/user.dart';
import 'package:ola_mundo/repositories/user_repository_impl.dart';

class UserController extends ChangeNotifier {
  final UserRepositoryImpl userRepository;

  UserController({required this.userRepository});

  List<User> _users = [];
  bool _isLoading = false;

  List<User> get users => _users;

  bool get isLoading => _isLoading;

  Future<void> loadUsers() async {
    _isLoading = true;
    notifyListeners();

    try {
      _users = await userRepository.getAll();
    } catch (e) {
      throw Error();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

}

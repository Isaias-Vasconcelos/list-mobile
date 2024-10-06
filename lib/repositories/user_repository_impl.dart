import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ola_mundo/models/user.dart';

class UserRepositoryImpl  {
  final Dio _dio = Dio();

  Future<User> get(int id) async {
    try {
      var request =
          await _dio.get('https://jsonplaceholder.typicode.com/users/$id');
      return User.fromMap(request.data);
    } on Exception catch (_) {
      throw Error();
    }
  }

  Future<List<User>> getAll() async {
    try {
      var request =
          await _dio.get('https://jsonplaceholder.typicode.com/users');

      List<User> response =
          (request.data as List).map((user) => User.fromMap(user)).toList();

      return response;
    } on Exception catch (e) {
      throw Exception('Erro ao buscar usuários: $e');
    }
  }
}

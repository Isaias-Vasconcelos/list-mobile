import 'package:ola_mundo/models/address.dart';
import 'package:ola_mundo/models/company.dart';

class User {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company
  });

  factory User.fromMap(Map<String, dynamic> item){
    return User(
      id: item['id'],
      name: item['name'],
      username: item['username'],
      email: item['email'],
      address: Address.fromMap(item['address']),
      phone: item['phone'],
      website: item['website'],
      company: Company.fromMap(item['company'])
    );
  }
}

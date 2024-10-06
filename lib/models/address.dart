import 'package:ola_mundo/models/geo.dart';

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromMap(Map<String, dynamic> item) {
    return Address(
      street: item['street'],
      suite: item['suite'],
      city: item['city'],
      zipcode: item['zipcode'],
      geo: Geo.fromMap(item['geo']),
    );
  }
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromMap(Map<String, dynamic> item) {
    return Company(
      name: item['name'],
      catchPhrase: item['catchPhrase'],
      bs: item['bs'],
    );
  }
}

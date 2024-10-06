class Geo {
  String lat;
  String lng;

  Geo({
    required this.lat,
    required this.lng,
  });


  factory Geo.fromMap(Map<String,dynamic> item) {
    return Geo(
      lat: item['lat'],
      lng: item['lng']
    );
  }
}

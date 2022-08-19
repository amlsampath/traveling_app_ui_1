class LocationModel {
  String hotel;
  String country;
  String rating;
  String tourCount;
  String description;
  String price;
  String address;
  String photo;
  LocationModel({
    required this.address,
    required this.country,
    required this.description,
    required this.hotel,
    required this.price,
    required this.rating,
    required this.tourCount,
    required this.photo,
  });
}

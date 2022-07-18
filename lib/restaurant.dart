part of entities;

abstract class Restaurant implements Model {
  String get url;
  String get name;
  String get description;
  String get phoneNumber;
  Menu get menu;
  Address get address;
}

class BasicRestaurant implements Restaurant {
  @override
  Address address;
  @override
  String description;
  @override
  Menu menu;
  @override
  String name;
  @override
  String phoneNumber;
  @override
  String url;
  BasicRestaurant({
    required this.address,
    required this.description,
    required this.menu,
    required this.name,
    required this.phoneNumber,
    required this.url,
  });

  @override
  Map<String, dynamic> toModel() {
    return {
      "url": url,
      "name": name,
      "description": description,
      "phoneNumber": phoneNumber,
      "menu": menu.toModel(),
      "address": address.toModel(),
    };
  }
}

class CustomRestaurant implements Model {
  VisualConfig visualConfig;
  Restaurant restaurant;
  CustomRestaurant({required this.visualConfig, required this.restaurant});

  @override
  Map<String, dynamic> toModel() {
    return {
      "restaurant": restaurant.toModel(),
      "visualConfig": visualConfig.toModel()
    };
  }
}

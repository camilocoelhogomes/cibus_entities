part of entities;

class Restaurant implements Model {
  String url;
  String name;
  String description;
  String phoneNumber;
  Menu menu;
  Address address;

  Restaurant({
    required this.url,
    required this.name,
    required this.description,
    required this.phoneNumber,
    required this.menu,
    required this.address,
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

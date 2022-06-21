part of entities;

class Restaurant {
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
}

class CustomRestaurant extends Restaurant {
  VisualConfig visualConfig;

  CustomRestaurant({
    required String url,
    required String name,
    required String description,
    required String phoneNumber,
    required Menu menu,
    required Address address,
    required this.visualConfig,
  }) : super(
          url: url,
          name: name,
          description: description,
          phoneNumber: phoneNumber,
          menu: menu,
          address: address,
        );
}

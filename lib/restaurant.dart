part of entities;

class Restaurant {
  String url;
  String name;
  String description;
  String phoneNumber;
  String logo;
  Menu menu;
  Address address;

  Restaurant({
    required this.url,
    required this.name,
    required this.description,
    required this.phoneNumber,
    required this.logo,
    required this.menu,
    required this.address,
  });
}

class CustomRestaurant extends Restaurant {
  DominantColors dominantColors;
  LayoutConfig layoutConfig;
  CustomFonts customFonts;

  CustomRestaurant({
    required String url,
    required String name,
    required String description,
    required String phoneNumber,
    required String logo,
    required Menu menu,
    required Address address,
    required this.dominantColors,
    required this.customFonts,
    required this.layoutConfig,
  }) : super(
          url: url,
          name: name,
          description: description,
          phoneNumber: phoneNumber,
          logo: logo,
          menu: menu,
          address: address,
        );
}

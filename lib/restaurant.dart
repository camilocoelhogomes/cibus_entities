part of entities;

class Restaurant {
  final String url;
  final String name;
  final String description;
  final String phoneNumber;
  final String logo;
  final Menu menu;

  Restaurant({
    required this.url,
    required this.name,
    required this.description,
    required this.phoneNumber,
    required this.logo,
    required this.menu,
  });
}

class CustomRestaurant extends Restaurant {
  CustomPallet? customPallet;
  CustomFonts? customFonts;

  CustomRestaurant({
    required String url,
    required String name,
    required String description,
    required String phoneNumber,
    required String logo,
    required Menu menu,
    CustomPallet? customPallet,
    CustomFonts? customFonts,
  }) : super(
          url: url,
          name: name,
          description: description,
          phoneNumber: phoneNumber,
          logo: logo,
          menu: menu,
        );
}

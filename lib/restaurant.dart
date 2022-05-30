part of entities;

class Restaurant {
  String url;
  String name;
  String description;
  String phoneNumber;
  String logo;
  Menu menu;

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
  BasicCustomColors basicCustomColors;
  BasicCustomFonts customFonts;

  CustomRestaurant({
    required String url,
    required String name,
    required String description,
    required String phoneNumber,
    required String logo,
    required Menu menu,
    required this.basicCustomColors,
    required this.customFonts,
  }) : super(
          url: url,
          name: name,
          description: description,
          phoneNumber: phoneNumber,
          logo: logo,
          menu: menu,
        );
}

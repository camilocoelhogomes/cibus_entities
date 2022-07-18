part of entities;

class Restaurantfactory {
  BasicRestaurant basicRestaurant(
      {required Address address,
      required String description,
      required Menu menu,
      required String name,
      required String phoneNumber,
      required String url}) {
    return BasicRestaurant(
        address: address,
        description: description,
        menu: menu,
        name: name,
        phoneNumber: phoneNumber,
        url: url);
  }
}

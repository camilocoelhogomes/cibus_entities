import 'package:entities/entities.dart';

class AddressFactory {
  Address addressFactory({
    required String zipCode,
    required String country,
    required String state,
    required String city,
    required String neighborhood,
    required String street,
    required String buildingNumber,
    required String complement,
  }) {
    return Address(zipCode, country, state, city, neighborhood, street,
        buildingNumber, complement);
  }
}

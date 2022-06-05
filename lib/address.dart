part of entities;

class Address {
  String zipCode;
  String country;
  String state;
  String city;
  String neighborhood;
  String street;
  String buildingNumber;
  String complement;

  Address(
    this.zipCode,
    this.country,
    this.state,
    this.city,
    this.neighborhood,
    this.street,
    this.buildingNumber,
    this.complement,
  );
}

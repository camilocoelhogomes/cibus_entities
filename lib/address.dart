part of entities;

class Address implements Model {
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

  @override
  Map<String, dynamic> toModel() {
    return {
      "zipCode": zipCode,
      "country": country,
      "state": state,
      "city": city,
      "neighborhood": neighborhood,
      "street": street,
      "buildingNumber": buildingNumber,
      "complement": complement,
    };
  }
}

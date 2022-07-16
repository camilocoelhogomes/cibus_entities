part of entities;

class ItemVariationFactory {
  static ItemVariation fromModel(Map<String, dynamic> json) {
    return ItemVariation(
        description: json['description'], priceInCents: json['priceInCents']);
  }
}

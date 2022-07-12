part of entities;

abstract class MenuItem {
  String get id;
  String get category;
  String get defaultImgUrl;
  String get imgUrls;
  String get name;
  String get description;
}

class ItemPriceVariation {
  String description;
  int priceInCents;

  ItemPriceVariation({
    required this.description,
    required this.priceInCents,
  });
}

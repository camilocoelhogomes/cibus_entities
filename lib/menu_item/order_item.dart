part of entities;

abstract class OrderItem {
  int get price;
  String get name;
  List<String> get imgUrls;
  String get id;
  Category get category;
  String get defaultImgUrl;
  String get description;
}

class BasicOrderItem implements OrderItem {
  @override
  String id;
  @override
  Category category;
  @override
  List<String> imgUrls;
  @override
  String defaultImgUrl;
  @override
  String name;
  @override
  String description;
  late ItemPriceVariation choosedVariation;
  BasicOrderItem({
    required this.id,
    required this.imgUrls,
    required this.defaultImgUrl,
    required this.name,
    required this.description,
    required this.category,
  });

  @override
  int get price {
    return choosedVariation.priceInCents;
  }

  void setChoosedVariation(
      ItemPriceVariation item, List<ItemPriceVariation> itemVariations) {
    choosedVariation =
        itemVariations.where((element) => element == item).toList()[0];
  }
}

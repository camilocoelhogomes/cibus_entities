part of entities;

class OrderItem extends MenuItem {
  OrderItem({
    required int id,
    required List<String> imgUrls,
    required String defaultImgUrl,
    required String name,
    required String description,
    required Category category,
    required List<ItemPriceVariation> itemPriceVariations,
    required this.extras,
    required this.restaurant,
  }) : super(
          id: id,
          imgUrls: imgUrls,
          defaultImgUrl: defaultImgUrl,
          name: name,
          description: description,
          category: category,
          itemPriceVariations: itemPriceVariations,
        );
  List<MenuExtraItem> extras;
  Restaurant restaurant;
}

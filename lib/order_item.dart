part of entities;

class OrderItem extends MenuItem {
  OrderItem({
    required int id,
    required List<String> imgUrls,
    required String defaultImgUrl,
    required String name,
    required int priceInCents,
    required String description,
    required Category category,
    required this.extras,
  }) : super(
          id: id,
          imgUrls: imgUrls,
          defaultImgUrl: defaultImgUrl,
          name: name,
          priceInCents: priceInCents,
          description: description,
          category: category,
        );
  List<MenuExtraItem> extras;
}

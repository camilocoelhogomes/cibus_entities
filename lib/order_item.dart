part of entities;

class OrderItem extends MenuItem {
  OrderItem({
    required int id,
    required List<Image> imgList,
    required int defaultImg,
    required String name,
    required int priceInCents,
    required String description,
    required Category category,
    required this.extras,
    required this.restaurant,
  }) : super(
          id: id,
          imgList: imgList,
          defaultImg: defaultImg,
          name: name,
          priceInCents: priceInCents,
          description: description,
          category: category,
        );
  List<MenuExtraItem> extras;
  Restaurant restaurant;
}

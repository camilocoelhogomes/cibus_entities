part of entities;

class OrdemItemFactory {
  static OrderItem basicOrderItem(
      {required String id,
      required List<String> imgUrls,
      required String defaultImgUrl,
      required String name,
      required String description,
      required Category category,
      required ItemVariation choosedVariation}) {
    return BasicOrderItem(
        id: id,
        imgUrls: imgUrls,
        defaultImgUrl: defaultImgUrl,
        name: name,
        description: description,
        category: category,
        choosedVariation: choosedVariation);
  }

  OrderItem fromModel(Map<String, dynamic> json) {
    if (json['type'] == 'basicItem') {
      return basicOrderItem(
          id: json['id'] ?? '',
          imgUrls: json['imgUrls'] ?? [],
          defaultImgUrl: json['defaultImgUrl'] ?? '',
          name: json['name'] ?? '',
          description: json['description'] ?? '',
          category: CategoryFactor.fromModel(json['category']),
          choosedVariation:
              ItemVariationFactory.fromModel(json['choosedVariation']));
    }
    throw Exception('Order Idem inexistente');
  }
}

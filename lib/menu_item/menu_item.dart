part of entities;

abstract class MenuItem extends Model {
  String get id;
  String get category;
  String get defaultImgUrl;
  String get imgUrls;
  String get name;
  String get description;
}

class ItemVariation implements Model {
  String description;
  int priceInCents;

  ItemVariation({
    required this.description,
    required this.priceInCents,
  });

  @override
  Map<String, dynamic> toModel() {
    return {"description": description, "priceInCents": priceInCents};
  }
}

class BasicMenuItem implements MenuItem {
  @override
  String category;

  @override
  String defaultImgUrl;

  @override
  String description;

  @override
  String id;

  @override
  String imgUrls;

  @override
  String name;
  List<ItemVariation> itemVariations;
  BasicMenuItem(
      {required this.category,
      required this.defaultImgUrl,
      required this.description,
      required this.id,
      required this.imgUrls,
      required this.name,
      required this.itemVariations});

  @override
  Map<String, dynamic> toModel() {
    return {
      "category": category,
      "defaultImgUrl": defaultImgUrl,
      "description": description,
      "id": id,
      "imgUrls": imgUrls,
      "name": name,
      "itemVariations": itemVariations.map((e) => e.toModel()).toList(),
    };
  }
}

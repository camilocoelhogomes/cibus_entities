part of entities;

class CategoryFactor {
  static Category fromModel(Map<String, dynamic> json) {
    return Category(id: json['id'], name: json['name']);
  }

  Category basicCategory({required String id, required String name}) {
    return Category(id: id, name: name);
  }
}
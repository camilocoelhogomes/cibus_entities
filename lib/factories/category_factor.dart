part of entities;

class CategoryFactor {
  static Category fromModel(Map<String, dynamic> json) {
    return Category(id: json['id'], name: json['name']);
  }
}

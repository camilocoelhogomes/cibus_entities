part of entities;

class Category implements Model {
  String id;
  String name;
  Category({
    required this.id,
    required this.name,
  });

  @override
  Map<String, dynamic> toModel() {
    return {
      "id": id,
      "name": name,
    };
  }
}

class MenuExtraItem implements Model {
  String name;
  int priceInCents;
  List<Category> applicableCategories;
  MenuExtraItem({
    required this.name,
    required this.priceInCents,
    required this.applicableCategories,
  });

  @override
  Map<String, dynamic> toModel() {
    return {
      "name": name,
      "priceInCents": priceInCents,
      "applicableCategories": applicableCategories.map((element) {
        element.toModel();
      }).toList(),
    };
  }
}

abstract class UpdateItem {
  void updateItem(MenuItem menuItem);
}

class Menu implements Model {
  List<Category> categories;
  List<MenuItem> menuItems;
  List<MenuExtraItem> menuExtraItems;

  Menu({
    required this.menuItems,
    required this.categories,
    required this.menuExtraItems,
  });

  static isEmpty() {
    return Menu(categories: [], menuExtraItems: [], menuItems: []);
  }

  void addCategory(Category category) {
    categories.add(category);
  }

  void addMenuItem(MenuItem menuItem) {
    menuItems.add(menuItem);
  }

  void deleteMenuItem(MenuItem menuItem) {
    menuItems.removeWhere((element) => element.id == menuItem.id);
  }

  void addMenuExtraItem(MenuExtraItem menuExtraItem) {
    menuExtraItems.add(menuExtraItem);
  }

  void deleteMenuExtraItem(MenuExtraItem menuExtraItem) {
    menuExtraItems.removeWhere((element) => element.name == menuExtraItem.name);
  }

  @override
  Map<String, dynamic> toModel() {
    return {
      "menuItems": menuItems.map((e) => e.toModel()).toList(),
      "categories": categories.map((e) => e.toModel()).toList(),
      "menuExtraItems": menuExtraItems.map((e) => e.toModel()).toList(),
    };
  }
}

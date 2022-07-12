part of entities;

class Category {
  int id;
  String name;
  Category({
    required this.id,
    required this.name,
  });
}

class MenuExtraItem {
  String name;
  int priceInCents;
  List<Category> applicableCategories;
  MenuExtraItem({
    required this.name,
    required this.priceInCents,
    required this.applicableCategories,
  });
}

abstract class UpdateItem {
  void updateItem(MenuItem menuItem);
}

class Menu {
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
}

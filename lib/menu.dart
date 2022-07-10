part of entities;

class ItemPriceVariation {
  String description;
  int priceInCents;

  ItemPriceVariation({
    required this.description,
    required this.priceInCents,
  });
}

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

class MenuItem {
  int id;
  Category category;
  List<String> imgUrls;
  String defaultImgUrl;
  String name;
  List<ItemPriceVariation> itemPriceVariations;
  String description;
  MenuItem({
    required this.itemPriceVariations,
    required this.id,
    required this.imgUrls,
    required this.defaultImgUrl,
    required this.name,
    required this.description,
    required this.category,
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

  void deleteCategory(Category category) {
    categories.removeWhere((element) => element.id == category.id);
    menuItems.removeWhere((element) => element.category.id == category.id);
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

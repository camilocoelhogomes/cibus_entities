part of entities;

class Banner {
  static List<String> types = ['full', 'small', 'stripe'];

  String name;
  String title;
  bool isActive;
  String linkToRedirect;
  String imageUrl;
  String type;

  Banner(
    this.name,
    this.isActive,
    this.linkToRedirect,
    this.imageUrl,
    this.type,
    this.title,
  );
}

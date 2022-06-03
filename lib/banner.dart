part of entities;

class MarketingBanner {
  static List<String> types = ['full', 'medium', 'small', 'stripe'];

  String name;
  String title;
  bool isActive;
  String linkToRedirect;
  String imageUrl;
  String type;

  MarketingBanner(
    this.name,
    this.isActive,
    this.linkToRedirect,
    this.imageUrl,
    this.type,
    this.title,
  );
}

part of entities;

enum MarketingBanners { full, medium, small, stripe }

class MarketingBanner {
  String name;
  String title;
  bool isActive;
  String linkToRedirect;
  String imageUrl;
  MarketingBanners type;

  MarketingBanner({
    this.name = '',
    this.isActive = true,
    this.linkToRedirect = '',
    this.imageUrl = '',
    this.type = MarketingBanners.full,
    this.title = '',
  });
}

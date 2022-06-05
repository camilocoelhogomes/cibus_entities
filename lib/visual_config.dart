part of entities;

class VisualConfig {
  final String logo;
  final LayoutConfig layoutConfig;
  final List<MarketingBanner> banners;
  final List<SocialMedia> socialMedias;

  VisualConfig(
    this.logo,
    this.layoutConfig,
    this.banners,
    this.socialMedias,
  );
}

class SocialMedia {
  static List<String> types = [
    'instagram',
    'whatsapp',
    'facebook',
  ];
  final String type;
  final String link;

  SocialMedia(this.type, this.link);
}

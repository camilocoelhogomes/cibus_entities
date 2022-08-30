part of entities;

class VisualConfig {
  String logo;
  LayoutConfig layoutConfig;
  List<MarketingBanner> marketingBanners;
  List<SocialMedia> socialMedias;

  VisualConfig(
    this.logo,
    this.layoutConfig,
    this.marketingBanners,
    this.socialMedias,
  );
}

enum SocialMedias { instagram, facebook, whatsapp, linkedin, twitter, youtube }

class SocialMedia {
  SocialMedias type;
  String link;

  SocialMedia(this.type, this.link);
}

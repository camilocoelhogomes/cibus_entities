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

enum SocialMedias { instagram, facebook, whatsapp, linkedin, twitter, youtube }

class SocialMedia {
  final SocialMedias type;
  final String link;

  SocialMedia(this.type, this.link);
}

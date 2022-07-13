part of entities;

class VisualConfig implements Model {
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

  @override
  Map<String, dynamic> toModel() {
    // TODO: implement toModel
    throw UnimplementedError();
  }
}

enum SocialMedias { instagram, facebook, whatsapp, linkedin, twitter, youtube }

class SocialMedia {
  final SocialMedias type;
  final String link;

  SocialMedia(this.type, this.link);
}

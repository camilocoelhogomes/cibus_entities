part of entities;

class LayoutConfig {
  static int numberOfBanners = 3;
  static List<String> styles = ['fastfood'];
  TopBarConfig topBarConfig;
  BackgroundConfig backgroundConfig;
  List<Banner> banners;

  LayoutConfig(this.topBarConfig, this.banners, this.backgroundConfig);
}

class TopBarConfig {
  int topBarHeadlineColor;
  int topBarCaptionColor;
  bool enabled;

  TopBarConfig({
    this.topBarHeadlineColor = 452984831,
    this.topBarCaptionColor = 452984831,
    this.enabled = true,
  });
  TopBarConfig copyWith({
    int? topBarHeadlineColor,
    int? topBarCaptionColor,
    int? topBarBackgroundColor,
  }) {
    return TopBarConfig(
      topBarHeadlineColor: topBarHeadlineColor ?? this.topBarHeadlineColor,
      topBarCaptionColor: topBarCaptionColor ?? this.topBarCaptionColor,
    );
  }
}

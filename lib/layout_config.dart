part of entities;

class LayoutConfig {
  static List<String> layoutDistributions = ['fastfood'];
  String layoutDistribution;
  DominantColors dominantColors;
  BackgroundConfig backgroundConfig;
  CustomFonts customFonts;
  TopBarConfig topBarConfig;

  LayoutConfig(
    this.topBarConfig,
    this.layoutDistribution,
    this.backgroundConfig,
    this.customFonts,
    this.dominantColors,
  );
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

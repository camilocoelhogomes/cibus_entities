part of entities;

class LayoutConfig {
  static List<String> layoutDistributions = ['fastfood'];
  String layoutDistribution;
  DominantColors dominantColors;
  BackgroundConfig backgroundConfig;
  Fonts customFonts;
  TopBarConfig topBarConfig;

  LayoutConfig(
    this.topBarConfig,
    this.layoutDistribution,
    this.backgroundConfig,
    this.customFonts,
    this.dominantColors,
  );
}

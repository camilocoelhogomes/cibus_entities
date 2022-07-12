part of entities;

enum LayoutDistributions { fastfood }

class LayoutConfig {
  LayoutDistributions layoutDistribution;
  DominantColors dominantColors;
  BackgroundConfig backgroundConfig;
  Fonts fonts;
  TopBarConfig topBarConfig;

  LayoutConfig(
    this.topBarConfig,
    this.layoutDistribution,
    this.backgroundConfig,
    this.fonts,
    this.dominantColors,
  );
}

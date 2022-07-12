part of entities;

class TopBarConfig {
  String topBarBackgroundColor;
  double topBarBackgroundOpacity;
  String topBarFontColor;
  bool enabled;

  TopBarConfig({
    this.topBarBackgroundColor = 'C4C4C4',
    this.topBarBackgroundOpacity = 0.8,
    this.topBarFontColor = '000000',
    this.enabled = true,
  });
  TopBarConfig copyWith({
    String? topBarBackgroundColor,
    double? topBarBackgroundOpacity,
    String? topBarFontColor,
    bool? enabled,
  }) {
    return TopBarConfig(
      topBarBackgroundColor:
          topBarBackgroundColor ?? this.topBarBackgroundColor,
      topBarBackgroundOpacity:
          topBarBackgroundOpacity ?? this.topBarBackgroundOpacity,
      topBarFontColor: topBarFontColor ?? this.topBarFontColor,
      enabled: enabled ?? this.enabled,
    );
  }
}

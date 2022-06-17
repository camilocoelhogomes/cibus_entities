part of entities;

class TopBarConfig {
  String topBarBackgroundColor;
  double topBarBackgroundOpacity;
  String topBarFontColor;
  bool enabled;

  TopBarConfig({
    this.topBarFontColor = '000000',
    this.topBarBackgroundColor = 'C4C4C4',
    this.topBarBackgroundOpacity = 0.8,
    this.enabled = true,
  });
  TopBarConfig copyWith({
    String? topBarFontColor,
    String? topBarBackgroundColor,
    bool? enabled,
  }) {
    return TopBarConfig(
      topBarFontColor: topBarFontColor ?? this.topBarFontColor,
      topBarBackgroundColor:
          topBarBackgroundColor ?? this.topBarBackgroundColor,
      enabled: enabled ?? this.enabled,
    );
  }
}

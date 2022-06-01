part of entities;

class Layout1 {
  static int numberOfBanners = 3;
  TopBarColors topBarColors;
  List<Banner> banners;

  Layout1(this.topBarColors, this.banners);
}

class TopBarColors {
  int topBarHeadlineColor;
  int topBarCaptionColor;

  TopBarColors({
    this.topBarHeadlineColor = 452984831,
    this.topBarCaptionColor = 452984831,
  });
  TopBarColors copyWith({
    int? topBarHeadlineColor,
    int? topBarCaptionColor,
    int? topBarBackgroundColor,
  }) {
    return TopBarColors(
      topBarHeadlineColor: topBarHeadlineColor ?? this.topBarHeadlineColor,
      topBarCaptionColor: topBarCaptionColor ?? this.topBarCaptionColor,
    );
  }
}

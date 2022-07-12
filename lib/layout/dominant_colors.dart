part of entities;

class DominantColors {
  String primaryColor;
  String secondaryColor;

  DominantColors({
    this.primaryColor = '006687',
    this.secondaryColor = '4F4D4D',
  });

  DominantColors copyWith({
    String? backgroundColor,
    String? secondaryColor,
    String? primaryColor,
  }) {
    return DominantColors(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
    );
  }
}

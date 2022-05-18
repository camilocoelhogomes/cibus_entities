part of entities;

class BasicCustomFonts {
  String headerFontName;
  String bodyFontName;
  BasicCustomFonts({
    this.headerFontName = 'Inter',
    this.bodyFontName = 'Inter',
  });

  BasicCustomFonts copyWith({
    String? headerFontName,
    String? bodyFontName,
  }) {
    return BasicCustomFonts(
      headerFontName: headerFontName ?? this.headerFontName,
      bodyFontName: bodyFontName ?? this.bodyFontName,
    );
  }

  static List<String> fontNames = ['Inter', 'Lato', 'Merriweather', 'Poppins'];
}

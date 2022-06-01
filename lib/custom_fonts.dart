part of entities;

class CustomFonts {
  String primaryFontName;
  String headersFontName;
  CustomFonts({
    this.primaryFontName = 'Inter',
    this.headersFontName = 'Inter',
  });

  CustomFonts copyWith({
    String? headersFontName,
    String? primaryFontName,
  }) {
    return CustomFonts(
      headersFontName: headersFontName ?? this.headersFontName,
      primaryFontName: primaryFontName ?? this.primaryFontName,
    );
  }

  static List<String> fontNames = [
    'Inter',
    'Lato',
    'Merriweather',
    'PT Sans',
    'Open Sans',
    'Oswald',
    'Poppins',
    'Roboto',
    'Raleway'
  ];
}

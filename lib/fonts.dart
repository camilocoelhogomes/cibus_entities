part of entities;

class Fonts {
  String primaryFontName;
  String headersFontName;
  Fonts({
    this.primaryFontName = 'PT Sans Narrow',
    this.headersFontName = 'PT Sans Narrow',
  });

  Fonts copyWith({
    String? headersFontName,
    String? primaryFontName,
  }) {
    return Fonts(
      headersFontName: headersFontName ?? this.headersFontName,
      primaryFontName: primaryFontName ?? this.primaryFontName,
    );
  }

  static List<String> fontNames = [
    'Inter',
    'Lato',
    'Merriweather',
    'PT Sans',
    'PT Sans Narrow',
    'Open Sans',
    'Oswald',
    'Poppins',
    'Roboto',
    'Raleway'
  ];
}

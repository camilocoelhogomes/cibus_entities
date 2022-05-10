part of entities;

class BasicCustomColors {
  String primaryColor;
  String secondaryColor;
  String backgroundColor;

  BasicCustomColors({
    this.primaryColor = '006687',
    this.secondaryColor = '4F4D4D',
    this.backgroundColor = 'FFFFFF',
  });

  BasicCustomColors copyWith({
    String? backgroundColor,
    String? secondaryColor,
    String? primaryColor,
  }) {
    return BasicCustomColors(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}

class TopBarColors {
  int topBarHeadlineColor;
  int topBarCaptionColor;
  int topBarBackgroundColor;
  TopBarColors({
    this.topBarCaptionColor = 452984831,
    this.topBarHeadlineColor = 452984831,
    this.topBarBackgroundColor = 16777215,
  });
  TopBarColors copyWith({
    int? topBarHeadlineColor,
    int? topBarCaptionColor,
    int? topBarBackgroundColor,
  }) {
    return TopBarColors(
      topBarHeadlineColor: topBarHeadlineColor ?? this.topBarHeadlineColor,
      topBarCaptionColor: topBarCaptionColor ?? this.topBarCaptionColor,
      topBarBackgroundColor:
          topBarBackgroundColor ?? this.topBarBackgroundColor,
    );
  }
}

class BottomBarColors {
  int bottomBarBackgroundColor;
  int bottomBarIconColor;
  int bottomBarSelectedLabelColor;
  int bottomBarUnselectedLabelColor;
  BottomBarColors({
    this.bottomBarBackgroundColor = 3019898879,
    this.bottomBarIconColor = 452984831,
    this.bottomBarSelectedLabelColor = 452984831,
    this.bottomBarUnselectedLabelColor = 452984831,
  });

  BottomBarColors copyWith({
    int? bottomBarBackgroundColor,
    int? bottomBarIconColor,
    int? bottomBarSelectedLabelColor,
    int? bottomBarUnselectedLabelColor,
  }) {
    return BottomBarColors(
      bottomBarBackgroundColor:
          bottomBarBackgroundColor ?? this.bottomBarBackgroundColor,
      bottomBarIconColor: bottomBarIconColor ?? this.bottomBarIconColor,
      bottomBarSelectedLabelColor:
          bottomBarSelectedLabelColor ?? this.bottomBarSelectedLabelColor,
      bottomBarUnselectedLabelColor:
          bottomBarUnselectedLabelColor ?? this.bottomBarUnselectedLabelColor,
    );
  }
}

class MenuPageColors {
  int headlineColor;
  int categoryColor;
  int itemNameColor;
  int priceColor;
  int descriptionColor;
  int itembackgroundColor;

  MenuPageColors({
    this.headlineColor = 452984831,
    this.categoryColor = 452984831,
    this.itemNameColor = 452984831,
    this.priceColor = 452984831,
    this.descriptionColor = 452984831,
    this.itembackgroundColor = 3019898879,
  });

  MenuPageColors copyWith({
    int? headlineColor,
    int? categoryColor,
    int? itemNameColor,
    int? priceColor,
    int? descriptionColor,
    int? itembackgroundColor,
  }) {
    return MenuPageColors(
      headlineColor: headlineColor ?? this.headlineColor,
      categoryColor: categoryColor ?? this.categoryColor,
      itemNameColor: itemNameColor ?? this.itemNameColor,
      priceColor: priceColor ?? this.priceColor,
      descriptionColor: descriptionColor ?? this.descriptionColor,
      itembackgroundColor: itembackgroundColor ?? this.itembackgroundColor,
    );
  }
}

class MenuDetailsPageColors {
  int headlineColor;
  int descriptionColor;
  int arrowsColor;
  int extraColor;
  int extraNameColor;
  int priceColor;
  int countColor;
  int commentColor;
  int totalColor;
  int totalPriceColor;
  int buttomColor;
  int buttomTextColor;

  MenuDetailsPageColors({
    this.headlineColor = 452984831,
    this.descriptionColor = 452984831,
    this.arrowsColor = 452984831,
    this.extraColor = 452984831,
    this.extraNameColor = 452984831,
    this.priceColor = 452984831,
    this.countColor = 452984831,
    this.commentColor = 452984831,
    this.totalColor = 452984831,
    this.totalPriceColor = 452984831,
    this.buttomColor = 452984831,
    this.buttomTextColor = 452984831,
  });
}

class OrdersPageColors {
  int headlineColor;
  int itemNameColor;
  int priceColor;
  int preparingColor;
  int deliveredStatusColor;
  int canceledStatusColor;
  int itembackgroundColor;

  OrdersPageColors({
    this.headlineColor = 452984831,
    this.itemNameColor = 452984831,
    this.priceColor = 452984831,
    this.preparingColor = 452984831,
    this.deliveredStatusColor = 452984831,
    this.canceledStatusColor = 452984831,
    this.itembackgroundColor = 3019898879,
  });
}

class OrdersDetailsPageColors {
  int headlineColor;
  int arrowColor;
  int intemNameColor;
  int descriptionColor;
  int extraTitleColor;
  int extraNameColor;
  int extraCountColor;
  int commentColor;
  int deliveryColor;
  int statusColor;
  int doingColor;
  int doneColor;
  int toDoColor;
  int cancelButtomColor;
  int cancelButtomTextColor;

  OrdersDetailsPageColors({
    this.headlineColor = 452984831,
    this.arrowColor = 452984831,
    this.intemNameColor = 452984831,
    this.descriptionColor = 452984831,
    this.extraTitleColor = 452984831,
    this.extraNameColor = 452984831,
    this.extraCountColor = 452984831,
    this.commentColor = 452984831,
    this.deliveryColor = 452984831,
    this.statusColor = 452984831,
    this.doingColor = 452984831,
    this.doneColor = 452984831,
    this.toDoColor = 452984831,
    this.cancelButtomColor = 452984831,
    this.cancelButtomTextColor = 452984831,
  });
}

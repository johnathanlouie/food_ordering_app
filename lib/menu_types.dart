enum MenuItemType {
  mainDish,
  sideDish,
  snack,
  appetizer,
  sweet,
  beverage,
  deal,
  limitedTimeOnly,
}

extension MenuItemTypeExtension on MenuItemType {
  static const names = {
    MenuItemType.mainDish: 'Main Dishes',
    MenuItemType.sideDish: 'Sides',
    MenuItemType.snack: 'Snacks',
    MenuItemType.appetizer: 'Appetizers',
    MenuItemType.sweet: 'Sweets',
    MenuItemType.beverage: 'Beverages',
    MenuItemType.deal: 'Deals',
    MenuItemType.limitedTimeOnly: 'Limited Time Only',
  };

  static const images = {
    MenuItemType.mainDish: 'assets/food.png',
    MenuItemType.sideDish: 'assets/food.png',
    MenuItemType.snack: 'assets/food.png',
    MenuItemType.appetizer: 'assets/food.png',
    MenuItemType.sweet: 'assets/food.png',
    MenuItemType.beverage: 'assets/food.png',
    MenuItemType.deal: 'assets/food.png',
    MenuItemType.limitedTimeOnly: 'assets/food.png',
  };

  String get name => names[this]!;

  String get image => images[this]!;
}

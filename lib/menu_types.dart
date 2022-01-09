class MenuItemData {
  final String name;
  final double price;
  final String image;
  final String description;
  final int minCalories;
  final int maxCalories;

  const MenuItemData({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.minCalories,
    required this.maxCalories,
  });

  String priceCalories() {
    return "\$${this.price} ${this.minCalories}-${this.maxCalories} Cal.";
  }
}

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

final Map<MenuItemType, List<MenuItemData>> menuItems = const {
  MenuItemType.mainDish: [
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 0',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Justo donec enim diam vulputate ut pharetra sit amet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Ultrices in iaculis nunc sed augue. Morbi leo urna molestie at elementum eu facilisis. In mollis nunc sed id semper risus in hendrerit. In eu mi bibendum neque. Eget aliquet nibh praesent tristique magna sit amet purus. In pellentesque massa placerat duis ultricies lacus sed turpis. Varius sit amet mattis vulputate enim nulla aliquet. Leo urna molestie at elementum eu facilisis sed. Est velit egestas dui id ornare arcu odio ut. Potenti nullam ac tortor vitae purus faucibus. Metus dictum at tempor commodo ullamcorper a lacus. Quis viverra nibh cras pulvinar mattis nunc sed. Mi proin sed libero enim sed faucibus. Eros in cursus turpis massa tincidunt dui ut. Cursus sit amet dictum sit amet justo. Elementum tempus egestas sed sed risus pretium quam vulputate. Dignissim enim sit amet venenatis urna cursus. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Potenti nullam ac tortor vitae. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Mauris a diam maecenas sed enim. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in. Id faucibus nisl tincidunt eget nullam non nisi. Id ornare arcu odio ut sem nulla. Fermentum iaculis eu non diam. In ante metus dictum at. Volutpat ac tincidunt vitae semper. Dignissim enim sit amet venenatis. Purus ut faucibus pulvinar elementum. Libero volutpat sed cras ornare arcu. Nisl nunc mi ipsum faucibus. Volutpat sed cras ornare arcu dui vivamus arcu felis. Penatibus et magnis dis parturient montes. Amet risus nullam eget felis eget nunc lobortis. Mattis rhoncus urna neque viverra justo nec ultrices. In fermentum posuere urna nec. Eros donec ac odio tempor orci dapibus ultrices in. Et sollicitudin ac orci phasellus egestas tellus. Non nisi est sit amet facilisis magna etiam. Pharetra massa massa ultricies mi. Purus non enim praesent elementum facilisis. Interdum consectetur libero id faucibus. Integer malesuada nunc vel risus commodo viverra maecenas. Erat velit scelerisque in dictum non consectetur a erat. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Eu mi bibendum neque egestas congue quisque egestas. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pellentesque habitant morbi tristique senectus et netus et malesuada. Aliquet porttitor lacus luctus accumsan tortor. Ipsum dolor sit amet consectetur adipiscing elit. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Elit at imperdiet dui accumsan. Nisi porta lorem mollis aliquam ut porttitor leo a. A diam maecenas sed enim ut sem. Facilisis gravida neque convallis a cras semper auctor. Tempor orci eu lobortis elementum nibh. Ac placerat vestibulum lectus mauris ultrices eros in. Posuere ac ut consequat semper viverra nam libero justo. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Eget nunc lobortis mattis aliquam faucibus purus in. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Dictumst quisque sagittis purus sit amet. Arcu risus quis varius quam quisque id. Odio tempor orci dapibus ultrices in iaculis nunc sed. Nisl condimentum id venenatis a condimentum. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Tincidunt vitae semper quis lectus. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 1',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 2',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
  ],
  MenuItemType.sideDish: [
    MenuItemData(
      name: 'Crispy Chicken Sandwich 0',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Justo donec enim diam vulputate ut pharetra sit amet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Ultrices in iaculis nunc sed augue. Morbi leo urna molestie at elementum eu facilisis. In mollis nunc sed id semper risus in hendrerit. In eu mi bibendum neque. Eget aliquet nibh praesent tristique magna sit amet purus. In pellentesque massa placerat duis ultricies lacus sed turpis. Varius sit amet mattis vulputate enim nulla aliquet. Leo urna molestie at elementum eu facilisis sed. Est velit egestas dui id ornare arcu odio ut. Potenti nullam ac tortor vitae purus faucibus. Metus dictum at tempor commodo ullamcorper a lacus. Quis viverra nibh cras pulvinar mattis nunc sed. Mi proin sed libero enim sed faucibus. Eros in cursus turpis massa tincidunt dui ut. Cursus sit amet dictum sit amet justo. Elementum tempus egestas sed sed risus pretium quam vulputate. Dignissim enim sit amet venenatis urna cursus. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Potenti nullam ac tortor vitae. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Mauris a diam maecenas sed enim. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in. Id faucibus nisl tincidunt eget nullam non nisi. Id ornare arcu odio ut sem nulla. Fermentum iaculis eu non diam. In ante metus dictum at. Volutpat ac tincidunt vitae semper. Dignissim enim sit amet venenatis. Purus ut faucibus pulvinar elementum. Libero volutpat sed cras ornare arcu. Nisl nunc mi ipsum faucibus. Volutpat sed cras ornare arcu dui vivamus arcu felis. Penatibus et magnis dis parturient montes. Amet risus nullam eget felis eget nunc lobortis. Mattis rhoncus urna neque viverra justo nec ultrices. In fermentum posuere urna nec. Eros donec ac odio tempor orci dapibus ultrices in. Et sollicitudin ac orci phasellus egestas tellus. Non nisi est sit amet facilisis magna etiam. Pharetra massa massa ultricies mi. Purus non enim praesent elementum facilisis. Interdum consectetur libero id faucibus. Integer malesuada nunc vel risus commodo viverra maecenas. Erat velit scelerisque in dictum non consectetur a erat. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Eu mi bibendum neque egestas congue quisque egestas. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pellentesque habitant morbi tristique senectus et netus et malesuada. Aliquet porttitor lacus luctus accumsan tortor. Ipsum dolor sit amet consectetur adipiscing elit. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Elit at imperdiet dui accumsan. Nisi porta lorem mollis aliquam ut porttitor leo a. A diam maecenas sed enim ut sem. Facilisis gravida neque convallis a cras semper auctor. Tempor orci eu lobortis elementum nibh. Ac placerat vestibulum lectus mauris ultrices eros in. Posuere ac ut consequat semper viverra nam libero justo. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Eget nunc lobortis mattis aliquam faucibus purus in. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Dictumst quisque sagittis purus sit amet. Arcu risus quis varius quam quisque id. Odio tempor orci dapibus ultrices in iaculis nunc sed. Nisl condimentum id venenatis a condimentum. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Tincidunt vitae semper quis lectus. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Crispy Chicken Sandwich 1',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Crispy Chicken Sandwich 2',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
  ],
  MenuItemType.snack: [
    MenuItemData(
      name: 'Bacon Quarter Pounder with Cheese 0',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Justo donec enim diam vulputate ut pharetra sit amet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Ultrices in iaculis nunc sed augue. Morbi leo urna molestie at elementum eu facilisis. In mollis nunc sed id semper risus in hendrerit. In eu mi bibendum neque. Eget aliquet nibh praesent tristique magna sit amet purus. In pellentesque massa placerat duis ultricies lacus sed turpis. Varius sit amet mattis vulputate enim nulla aliquet. Leo urna molestie at elementum eu facilisis sed. Est velit egestas dui id ornare arcu odio ut. Potenti nullam ac tortor vitae purus faucibus. Metus dictum at tempor commodo ullamcorper a lacus. Quis viverra nibh cras pulvinar mattis nunc sed. Mi proin sed libero enim sed faucibus. Eros in cursus turpis massa tincidunt dui ut. Cursus sit amet dictum sit amet justo. Elementum tempus egestas sed sed risus pretium quam vulputate. Dignissim enim sit amet venenatis urna cursus. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Potenti nullam ac tortor vitae. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Mauris a diam maecenas sed enim. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in. Id faucibus nisl tincidunt eget nullam non nisi. Id ornare arcu odio ut sem nulla. Fermentum iaculis eu non diam. In ante metus dictum at. Volutpat ac tincidunt vitae semper. Dignissim enim sit amet venenatis. Purus ut faucibus pulvinar elementum. Libero volutpat sed cras ornare arcu. Nisl nunc mi ipsum faucibus. Volutpat sed cras ornare arcu dui vivamus arcu felis. Penatibus et magnis dis parturient montes. Amet risus nullam eget felis eget nunc lobortis. Mattis rhoncus urna neque viverra justo nec ultrices. In fermentum posuere urna nec. Eros donec ac odio tempor orci dapibus ultrices in. Et sollicitudin ac orci phasellus egestas tellus. Non nisi est sit amet facilisis magna etiam. Pharetra massa massa ultricies mi. Purus non enim praesent elementum facilisis. Interdum consectetur libero id faucibus. Integer malesuada nunc vel risus commodo viverra maecenas. Erat velit scelerisque in dictum non consectetur a erat. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Eu mi bibendum neque egestas congue quisque egestas. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pellentesque habitant morbi tristique senectus et netus et malesuada. Aliquet porttitor lacus luctus accumsan tortor. Ipsum dolor sit amet consectetur adipiscing elit. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Elit at imperdiet dui accumsan. Nisi porta lorem mollis aliquam ut porttitor leo a. A diam maecenas sed enim ut sem. Facilisis gravida neque convallis a cras semper auctor. Tempor orci eu lobortis elementum nibh. Ac placerat vestibulum lectus mauris ultrices eros in. Posuere ac ut consequat semper viverra nam libero justo. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Eget nunc lobortis mattis aliquam faucibus purus in. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Dictumst quisque sagittis purus sit amet. Arcu risus quis varius quam quisque id. Odio tempor orci dapibus ultrices in iaculis nunc sed. Nisl condimentum id venenatis a condimentum. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Tincidunt vitae semper quis lectus. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Bacon Quarter Pounder with Cheese 1',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Bacon Quarter Pounder with Cheese 2',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
  ],
  MenuItemType.appetizer: [
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 0',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Justo donec enim diam vulputate ut pharetra sit amet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Ultrices in iaculis nunc sed augue. Morbi leo urna molestie at elementum eu facilisis. In mollis nunc sed id semper risus in hendrerit. In eu mi bibendum neque. Eget aliquet nibh praesent tristique magna sit amet purus. In pellentesque massa placerat duis ultricies lacus sed turpis. Varius sit amet mattis vulputate enim nulla aliquet. Leo urna molestie at elementum eu facilisis sed. Est velit egestas dui id ornare arcu odio ut. Potenti nullam ac tortor vitae purus faucibus. Metus dictum at tempor commodo ullamcorper a lacus. Quis viverra nibh cras pulvinar mattis nunc sed. Mi proin sed libero enim sed faucibus. Eros in cursus turpis massa tincidunt dui ut. Cursus sit amet dictum sit amet justo. Elementum tempus egestas sed sed risus pretium quam vulputate. Dignissim enim sit amet venenatis urna cursus. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Potenti nullam ac tortor vitae. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Mauris a diam maecenas sed enim. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in. Id faucibus nisl tincidunt eget nullam non nisi. Id ornare arcu odio ut sem nulla. Fermentum iaculis eu non diam. In ante metus dictum at. Volutpat ac tincidunt vitae semper. Dignissim enim sit amet venenatis. Purus ut faucibus pulvinar elementum. Libero volutpat sed cras ornare arcu. Nisl nunc mi ipsum faucibus. Volutpat sed cras ornare arcu dui vivamus arcu felis. Penatibus et magnis dis parturient montes. Amet risus nullam eget felis eget nunc lobortis. Mattis rhoncus urna neque viverra justo nec ultrices. In fermentum posuere urna nec. Eros donec ac odio tempor orci dapibus ultrices in. Et sollicitudin ac orci phasellus egestas tellus. Non nisi est sit amet facilisis magna etiam. Pharetra massa massa ultricies mi. Purus non enim praesent elementum facilisis. Interdum consectetur libero id faucibus. Integer malesuada nunc vel risus commodo viverra maecenas. Erat velit scelerisque in dictum non consectetur a erat. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Eu mi bibendum neque egestas congue quisque egestas. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pellentesque habitant morbi tristique senectus et netus et malesuada. Aliquet porttitor lacus luctus accumsan tortor. Ipsum dolor sit amet consectetur adipiscing elit. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Elit at imperdiet dui accumsan. Nisi porta lorem mollis aliquam ut porttitor leo a. A diam maecenas sed enim ut sem. Facilisis gravida neque convallis a cras semper auctor. Tempor orci eu lobortis elementum nibh. Ac placerat vestibulum lectus mauris ultrices eros in. Posuere ac ut consequat semper viverra nam libero justo. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Eget nunc lobortis mattis aliquam faucibus purus in. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Dictumst quisque sagittis purus sit amet. Arcu risus quis varius quam quisque id. Odio tempor orci dapibus ultrices in iaculis nunc sed. Nisl condimentum id venenatis a condimentum. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Tincidunt vitae semper quis lectus. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 1',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 2',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
  ],
  MenuItemType.sweet: [
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 0',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Justo donec enim diam vulputate ut pharetra sit amet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Ultrices in iaculis nunc sed augue. Morbi leo urna molestie at elementum eu facilisis. In mollis nunc sed id semper risus in hendrerit. In eu mi bibendum neque. Eget aliquet nibh praesent tristique magna sit amet purus. In pellentesque massa placerat duis ultricies lacus sed turpis. Varius sit amet mattis vulputate enim nulla aliquet. Leo urna molestie at elementum eu facilisis sed. Est velit egestas dui id ornare arcu odio ut. Potenti nullam ac tortor vitae purus faucibus. Metus dictum at tempor commodo ullamcorper a lacus. Quis viverra nibh cras pulvinar mattis nunc sed. Mi proin sed libero enim sed faucibus. Eros in cursus turpis massa tincidunt dui ut. Cursus sit amet dictum sit amet justo. Elementum tempus egestas sed sed risus pretium quam vulputate. Dignissim enim sit amet venenatis urna cursus. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Potenti nullam ac tortor vitae. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Mauris a diam maecenas sed enim. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in. Id faucibus nisl tincidunt eget nullam non nisi. Id ornare arcu odio ut sem nulla. Fermentum iaculis eu non diam. In ante metus dictum at. Volutpat ac tincidunt vitae semper. Dignissim enim sit amet venenatis. Purus ut faucibus pulvinar elementum. Libero volutpat sed cras ornare arcu. Nisl nunc mi ipsum faucibus. Volutpat sed cras ornare arcu dui vivamus arcu felis. Penatibus et magnis dis parturient montes. Amet risus nullam eget felis eget nunc lobortis. Mattis rhoncus urna neque viverra justo nec ultrices. In fermentum posuere urna nec. Eros donec ac odio tempor orci dapibus ultrices in. Et sollicitudin ac orci phasellus egestas tellus. Non nisi est sit amet facilisis magna etiam. Pharetra massa massa ultricies mi. Purus non enim praesent elementum facilisis. Interdum consectetur libero id faucibus. Integer malesuada nunc vel risus commodo viverra maecenas. Erat velit scelerisque in dictum non consectetur a erat. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Eu mi bibendum neque egestas congue quisque egestas. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pellentesque habitant morbi tristique senectus et netus et malesuada. Aliquet porttitor lacus luctus accumsan tortor. Ipsum dolor sit amet consectetur adipiscing elit. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Elit at imperdiet dui accumsan. Nisi porta lorem mollis aliquam ut porttitor leo a. A diam maecenas sed enim ut sem. Facilisis gravida neque convallis a cras semper auctor. Tempor orci eu lobortis elementum nibh. Ac placerat vestibulum lectus mauris ultrices eros in. Posuere ac ut consequat semper viverra nam libero justo. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Eget nunc lobortis mattis aliquam faucibus purus in. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Dictumst quisque sagittis purus sit amet. Arcu risus quis varius quam quisque id. Odio tempor orci dapibus ultrices in iaculis nunc sed. Nisl condimentum id venenatis a condimentum. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Tincidunt vitae semper quis lectus. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 1',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 2',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
  ],
  MenuItemType.beverage: [
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 0',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Justo donec enim diam vulputate ut pharetra sit amet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Ultrices in iaculis nunc sed augue. Morbi leo urna molestie at elementum eu facilisis. In mollis nunc sed id semper risus in hendrerit. In eu mi bibendum neque. Eget aliquet nibh praesent tristique magna sit amet purus. In pellentesque massa placerat duis ultricies lacus sed turpis. Varius sit amet mattis vulputate enim nulla aliquet. Leo urna molestie at elementum eu facilisis sed. Est velit egestas dui id ornare arcu odio ut. Potenti nullam ac tortor vitae purus faucibus. Metus dictum at tempor commodo ullamcorper a lacus. Quis viverra nibh cras pulvinar mattis nunc sed. Mi proin sed libero enim sed faucibus. Eros in cursus turpis massa tincidunt dui ut. Cursus sit amet dictum sit amet justo. Elementum tempus egestas sed sed risus pretium quam vulputate. Dignissim enim sit amet venenatis urna cursus. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Potenti nullam ac tortor vitae. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Mauris a diam maecenas sed enim. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in. Id faucibus nisl tincidunt eget nullam non nisi. Id ornare arcu odio ut sem nulla. Fermentum iaculis eu non diam. In ante metus dictum at. Volutpat ac tincidunt vitae semper. Dignissim enim sit amet venenatis. Purus ut faucibus pulvinar elementum. Libero volutpat sed cras ornare arcu. Nisl nunc mi ipsum faucibus. Volutpat sed cras ornare arcu dui vivamus arcu felis. Penatibus et magnis dis parturient montes. Amet risus nullam eget felis eget nunc lobortis. Mattis rhoncus urna neque viverra justo nec ultrices. In fermentum posuere urna nec. Eros donec ac odio tempor orci dapibus ultrices in. Et sollicitudin ac orci phasellus egestas tellus. Non nisi est sit amet facilisis magna etiam. Pharetra massa massa ultricies mi. Purus non enim praesent elementum facilisis. Interdum consectetur libero id faucibus. Integer malesuada nunc vel risus commodo viverra maecenas. Erat velit scelerisque in dictum non consectetur a erat. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Eu mi bibendum neque egestas congue quisque egestas. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pellentesque habitant morbi tristique senectus et netus et malesuada. Aliquet porttitor lacus luctus accumsan tortor. Ipsum dolor sit amet consectetur adipiscing elit. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Elit at imperdiet dui accumsan. Nisi porta lorem mollis aliquam ut porttitor leo a. A diam maecenas sed enim ut sem. Facilisis gravida neque convallis a cras semper auctor. Tempor orci eu lobortis elementum nibh. Ac placerat vestibulum lectus mauris ultrices eros in. Posuere ac ut consequat semper viverra nam libero justo. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Eget nunc lobortis mattis aliquam faucibus purus in. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Dictumst quisque sagittis purus sit amet. Arcu risus quis varius quam quisque id. Odio tempor orci dapibus ultrices in iaculis nunc sed. Nisl condimentum id venenatis a condimentum. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Tincidunt vitae semper quis lectus. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 1',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 2',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
  ],
  MenuItemType.deal: [
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 0',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Justo donec enim diam vulputate ut pharetra sit amet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Ultrices in iaculis nunc sed augue. Morbi leo urna molestie at elementum eu facilisis. In mollis nunc sed id semper risus in hendrerit. In eu mi bibendum neque. Eget aliquet nibh praesent tristique magna sit amet purus. In pellentesque massa placerat duis ultricies lacus sed turpis. Varius sit amet mattis vulputate enim nulla aliquet. Leo urna molestie at elementum eu facilisis sed. Est velit egestas dui id ornare arcu odio ut. Potenti nullam ac tortor vitae purus faucibus. Metus dictum at tempor commodo ullamcorper a lacus. Quis viverra nibh cras pulvinar mattis nunc sed. Mi proin sed libero enim sed faucibus. Eros in cursus turpis massa tincidunt dui ut. Cursus sit amet dictum sit amet justo. Elementum tempus egestas sed sed risus pretium quam vulputate. Dignissim enim sit amet venenatis urna cursus. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Potenti nullam ac tortor vitae. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Mauris a diam maecenas sed enim. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in. Id faucibus nisl tincidunt eget nullam non nisi. Id ornare arcu odio ut sem nulla. Fermentum iaculis eu non diam. In ante metus dictum at. Volutpat ac tincidunt vitae semper. Dignissim enim sit amet venenatis. Purus ut faucibus pulvinar elementum. Libero volutpat sed cras ornare arcu. Nisl nunc mi ipsum faucibus. Volutpat sed cras ornare arcu dui vivamus arcu felis. Penatibus et magnis dis parturient montes. Amet risus nullam eget felis eget nunc lobortis. Mattis rhoncus urna neque viverra justo nec ultrices. In fermentum posuere urna nec. Eros donec ac odio tempor orci dapibus ultrices in. Et sollicitudin ac orci phasellus egestas tellus. Non nisi est sit amet facilisis magna etiam. Pharetra massa massa ultricies mi. Purus non enim praesent elementum facilisis. Interdum consectetur libero id faucibus. Integer malesuada nunc vel risus commodo viverra maecenas. Erat velit scelerisque in dictum non consectetur a erat. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Eu mi bibendum neque egestas congue quisque egestas. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pellentesque habitant morbi tristique senectus et netus et malesuada. Aliquet porttitor lacus luctus accumsan tortor. Ipsum dolor sit amet consectetur adipiscing elit. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Elit at imperdiet dui accumsan. Nisi porta lorem mollis aliquam ut porttitor leo a. A diam maecenas sed enim ut sem. Facilisis gravida neque convallis a cras semper auctor. Tempor orci eu lobortis elementum nibh. Ac placerat vestibulum lectus mauris ultrices eros in. Posuere ac ut consequat semper viverra nam libero justo. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Eget nunc lobortis mattis aliquam faucibus purus in. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Dictumst quisque sagittis purus sit amet. Arcu risus quis varius quam quisque id. Odio tempor orci dapibus ultrices in iaculis nunc sed. Nisl condimentum id venenatis a condimentum. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Tincidunt vitae semper quis lectus. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 1',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 2',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
  ],
  MenuItemType.limitedTimeOnly: [
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 0',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet dictum sit amet justo. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula. Justo donec enim diam vulputate ut pharetra sit amet. Suscipit adipiscing bibendum est ultricies integer quis auctor. Ultrices in iaculis nunc sed augue. Morbi leo urna molestie at elementum eu facilisis. In mollis nunc sed id semper risus in hendrerit. In eu mi bibendum neque. Eget aliquet nibh praesent tristique magna sit amet purus. In pellentesque massa placerat duis ultricies lacus sed turpis. Varius sit amet mattis vulputate enim nulla aliquet. Leo urna molestie at elementum eu facilisis sed. Est velit egestas dui id ornare arcu odio ut. Potenti nullam ac tortor vitae purus faucibus. Metus dictum at tempor commodo ullamcorper a lacus. Quis viverra nibh cras pulvinar mattis nunc sed. Mi proin sed libero enim sed faucibus. Eros in cursus turpis massa tincidunt dui ut. Cursus sit amet dictum sit amet justo. Elementum tempus egestas sed sed risus pretium quam vulputate. Dignissim enim sit amet venenatis urna cursus. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Potenti nullam ac tortor vitae. Mauris pharetra et ultrices neque ornare aenean euismod elementum. Mauris a diam maecenas sed enim. Condimentum mattis pellentesque id nibh. Et tortor at risus viverra adipiscing at in. Id faucibus nisl tincidunt eget nullam non nisi. Id ornare arcu odio ut sem nulla. Fermentum iaculis eu non diam. In ante metus dictum at. Volutpat ac tincidunt vitae semper. Dignissim enim sit amet venenatis. Purus ut faucibus pulvinar elementum. Libero volutpat sed cras ornare arcu. Nisl nunc mi ipsum faucibus. Volutpat sed cras ornare arcu dui vivamus arcu felis. Penatibus et magnis dis parturient montes. Amet risus nullam eget felis eget nunc lobortis. Mattis rhoncus urna neque viverra justo nec ultrices. In fermentum posuere urna nec. Eros donec ac odio tempor orci dapibus ultrices in. Et sollicitudin ac orci phasellus egestas tellus. Non nisi est sit amet facilisis magna etiam. Pharetra massa massa ultricies mi. Purus non enim praesent elementum facilisis. Interdum consectetur libero id faucibus. Integer malesuada nunc vel risus commodo viverra maecenas. Erat velit scelerisque in dictum non consectetur a erat. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Eu mi bibendum neque egestas congue quisque egestas. Nisi vitae suscipit tellus mauris a diam maecenas sed enim. Pellentesque habitant morbi tristique senectus et netus et malesuada. Aliquet porttitor lacus luctus accumsan tortor. Ipsum dolor sit amet consectetur adipiscing elit. Posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis. Elit at imperdiet dui accumsan. Nisi porta lorem mollis aliquam ut porttitor leo a. A diam maecenas sed enim ut sem. Facilisis gravida neque convallis a cras semper auctor. Tempor orci eu lobortis elementum nibh. Ac placerat vestibulum lectus mauris ultrices eros in. Posuere ac ut consequat semper viverra nam libero justo. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Eget nunc lobortis mattis aliquam faucibus purus in. Congue nisi vitae suscipit tellus mauris a diam maecenas sed. Dictumst quisque sagittis purus sit amet. Arcu risus quis varius quam quisque id. Odio tempor orci dapibus ultrices in iaculis nunc sed. Nisl condimentum id venenatis a condimentum. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Aliquam sem fringilla ut morbi tincidunt augue interdum velit. Tincidunt vitae semper quis lectus. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 1',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
    MenuItemData(
      name: 'Spicy Crispy Chicken Sandwich 2',
      price: 5.99,
      image: 'assets/food.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      minCalories: 100,
      maxCalories: 400,
    ),
  ],
};

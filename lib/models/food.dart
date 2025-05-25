class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory type;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.type,
  });
}

enum FoodCategory {
  MainCourse,
  Dessert,
  Drink,
  Soup,
  Salad,
  Appetizer,
  SideDish,
}

class FastFoodItem {
  final String name;
  final String image;
  final String description;
  final bool veg;

  FastFoodItem({
    required this.name,
    required this.image,
    required this.description,
    required this.veg,
  });

  factory FastFoodItem.fromJson(Map<String, dynamic> json) {
    return FastFoodItem(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      veg: json['veg'],
    );
  }
}

class FoodListModel {
  final String name;
  final String image;
  final String description;
  final bool veg;

  FoodListModel({
    required this.name,
    required this.image,
    required this.description,
    required this.veg,
  });

  factory FoodListModel.fromJson(Map<String, dynamic> json) {
    return FoodListModel(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      veg: json['veg'],
    );
  }
}

import 'package:synarion_project/model/food_items.dart';
import 'package:synarion_project/utils/data.dart';

class FoodItemsList {
  static List<FastFoodItem> convertingMaptoObject() {
    List<FastFoodItem> allItems = [];
    for (var element in jsonData['fast_food_items']) {
      FastFoodItem item = FastFoodItem.fromJson(element);
      allItems.add(item);
    }
    return allItems;
  }
}

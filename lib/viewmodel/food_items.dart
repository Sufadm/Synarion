import 'package:synarion_project/model/food_items.dart';
import 'package:synarion_project/view/utils/const/data.dart';

class FoodItemsListController {
  static List<FoodListModel> convertingMaptoObject() {
    List<FoodListModel> allItems = [];
    for (var element in listofItems['fast_food_items']) {
      FoodListModel item = FoodListModel.fromJson(element);
      allItems.add(item);
    }
    return allItems;
  }
}

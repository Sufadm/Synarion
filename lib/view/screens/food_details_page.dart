import 'package:flutter/material.dart';
import 'package:synarion_project/viewmodel/food_items.dart';
import 'package:synarion_project/model/food_items.dart';
import 'package:synarion_project/view/utils/const/colors.dart';
import 'package:synarion_project/view/utils/const/sizedbox.dart';
import 'package:synarion_project/view/screens/widgets/food_details_page/custom_icon_button.dart';
import 'package:synarion_project/view/screens/widgets/food_details_page/food_details_page_featured.dart';
import 'package:synarion_project/view/screens/widgets/global/icons_top.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({
    super.key,
    required this.item,
  });
  final FoodListModel item;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.height;

    final List<Widget> featureOptions = List.generate(10, (index) {
      List<FoodListModel> allItems =
          FoodItemsListController.convertingMaptoObject();
      return FoodDetailsFeaturesOptions(item: allItems[index]);
    });
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,

              //top icons----------------
              const IconsTop(
                image: '',
                color: Color(0xFFF58370),
                icon: Icon(
                  Icons.shopping_cart,
                  color: kWhite,
                ),
              ),
              kHeight30,
              Text(
                item.name.toUpperCase(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: screenheight / 2.9,
                    width: double.infinity,
                    color: kWhite,
                    child: Row(
                      children: [
                        //Food Photo List-----------
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Image.network(
                              'https://recipes.timesofindia.com/thumb/83565509.cms?width=1200&height=900',
                              width: screenwidth * 0.28,
                              height: screenheight / 4),
                        ),

                        // custom icon button-----------------------------------
                        Container(
                          color: kWhite,
                          margin: const EdgeInsets.only(left: 70),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  CustomIconButton(
                                    imageUrl:
                                        'https://static.thenounproject.com/png/4590951-200.png',
                                    iconColor: Colors.red,
                                    backgroundColor: Colors.white,
                                    iconSize: 20.0,
                                  ),
                                  CustomIconButton(
                                    iconData: Icons.share,
                                    iconColor: Colors.red,
                                    backgroundColor: Colors.white,
                                    iconSize: 30.0,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // price & Add to cart widget---------------------------------
                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            '₹ 52',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 66),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0xFFF25051),
                            ),
                            width: screenwidth * 0.29,
                            height: screenheight / 13,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: kWhite,
                                  ),
                                  margin: const EdgeInsets.only(left: 15),
                                  height: 38,
                                  width: 90,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '—   0    +',
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                const Text(
                                  'Add to Cart',
                                  style: TextStyle(color: kWhite),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),

                  // featured food list--------------------------
                  kHeight20,
                  const Text(
                    'FEATURED',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screenheight / 2,
                    child: ListView.builder(
                      itemCount: featureOptions.length,
                      itemBuilder: (context, index) {
                        return featureOptions[index];
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}

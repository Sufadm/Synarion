import 'package:flutter/material.dart';
import 'package:synarion_project/model/food_items.dart';
import 'package:synarion_project/utils/colors.dart';
import 'package:synarion_project/utils/sizedbox.dart';
import 'package:synarion_project/widgets/food_details_page_featured.dart';
import 'package:synarion_project/widgets/icons_top.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({
    super.key,
    required this.item,
  });
  final FastFoodItem item;

  @override
  Widget build(BuildContext context) {
    final List<Widget> featureOptions = List.generate(
      4,
      (index) => const FoodDetailsFeaturesOptions(),
    );
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              const IconsTop(
                color: kBlack,
                imageUrl:
                    'https://img.freepik.com/premium-vector/shopping-cart-icon-isolated-white-background-vector-illustration_736051-305.jpg',
              ),
              kHeight25,
              Text(
                item.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    color: kWhite,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Image.network(
                            'https://recipes.timesofindia.com/thumb/83565509.cms?width=1200&height=900',
                            width: 280,
                            height: 400,
                          ),
                        ),
                        Container(
                          color: kWhite,
                          margin: const EdgeInsets.only(left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    bottom: 70, right: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), // Shadow color
                                        spreadRadius: 2, // Spread radius
                                        blurRadius: 5, // Blur radius
                                        offset: const Offset(0, 3), // Offset
                                      ),
                                    ],
                                  ),
                                  height: 35,
                                  width: 35,
                                  child: const Center(child: Text('❤️')),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    bottom: 90, right: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  height: 35,
                                  width: 35,
                                  child: const Center(
                                      child: Icon(
                                    Icons.share,
                                    color: Colors.red,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Text(
                            '     ₹ 52',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromARGB(255, 233, 74, 63),
                            ),
                            width: 250,
                            height: 60,
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
                                        '—  0  +',
                                        style: TextStyle(
                                            color: kBlack, fontSize: 15),
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
                  kHeight20,
                  const Text(
                    'FEATURED',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 500,
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

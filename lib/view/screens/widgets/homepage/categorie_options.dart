import 'package:flutter/material.dart';
import 'package:synarion_project/viewmodel/select_options_provider.dart';
import 'package:provider/provider.dart';

class CategorieFoodsOptions extends StatelessWidget {
  const CategorieFoodsOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedOptionProvider = Provider.of<SelectedOptionProvider>(context);

    final options = [
      'FEATURED',
      'COMBOS',
      'FAVOURITES',
      'RECOMMENDED',
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(options.length, (index) {
        return GestureDetector(
          onTap: () {
            selectedOptionProvider.setSelectedOptionIndex(index);
          },
          child: Text(
            options[index],
            style: TextStyle(
              fontWeight: index == selectedOptionProvider.selectedOptionIndex
                  ? FontWeight.bold
                  : FontWeight.normal,
              fontSize:
                  index == selectedOptionProvider.selectedOptionIndex ? 17 : 13,
              color: index == selectedOptionProvider.selectedOptionIndex
                  ? Colors.black
                  : Colors.grey,
            ),
          ),
        );
      }),
    );
  }
}

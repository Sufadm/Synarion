import 'package:flutter/material.dart';

class SelectedOptionProvider with ChangeNotifier {
  int _selectedOptionIndex = 0;

  int get selectedOptionIndex => _selectedOptionIndex;

  void setSelectedOptionIndex(int newIndex) {
    _selectedOptionIndex = newIndex;
    notifyListeners();
  }
}

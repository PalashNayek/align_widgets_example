import 'package:flutter/material.dart';

class AlignViewModel extends ChangeNotifier {
  Alignment alignment = Alignment.center;

  // Method to update the alignment
  void updateAlignment(Alignment newAlignment) {
    alignment = newAlignment;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ChangeColor extends ChangeNotifier {

  bool _lightBlue = true;

  bool get lightBlue => _lightBlue;

  set lightBlue(bool val) {
    _lightBlue = val;
    notifyListeners();
  }

  Color get color => (_lightBlue) ? Colors.lightBlue : Colors.red;

}


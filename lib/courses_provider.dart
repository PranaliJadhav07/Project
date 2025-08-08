import 'package:flutter/material.dart';
import 'package:project/courses.dart';

class CoursesProvider with ChangeNotifier {
  Courses? _selectedProduct;

  Courses? get selectedProduct=> _selectedProduct;

  void selectProduct(Courses product){
    _selectedProduct =product;
    notifyListeners();
  }
  
}
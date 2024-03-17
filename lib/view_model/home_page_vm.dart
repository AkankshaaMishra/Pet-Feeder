import 'package:flutter/material.dart';
import 'package:pet_feeder/model/home_page_model.dart';

class HomePageViewModel with ChangeNotifier {
  List<HomePageOptionModel> options = [
    HomePageOptionModel(optionName: "HOME", isSelected: false),
    HomePageOptionModel(optionName: "Products & Supplies", isSelected: false),
    HomePageOptionModel(optionName: "Pet Care Tips", isSelected: false),
    HomePageOptionModel(optionName: "Contact Us", isSelected: false),
  ];
}

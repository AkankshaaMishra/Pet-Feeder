class HomePageOptionModel {
  String? optionName;
  bool? isSelected;

  HomePageOptionModel({this.optionName, this.isSelected});

  HomePageOptionModel copyWith({
    String? optionName,
    bool? isSelected,
  }) {
    return HomePageOptionModel(
        optionName: this.optionName ?? optionName,
        isSelected: this.isSelected ?? isSelected);
  }
}

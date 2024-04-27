import 'package:food_tablet_app/utils/values/app_images/app_images.dart';
import 'package:get/get.dart';

import '../data/models/home_models/menu_option_model.dart';

class HomeController extends GetxController {


  int optionSelected = 0;

  List<MenuOptionModel> menuOptionList = [
    MenuOptionModel(id: 1, image: AppImages.burger, name: 'Burgers'),
    MenuOptionModel(id: 2, image: AppImages.pizza, name: 'Chicken Pizza'),
    MenuOptionModel(id: 3, image: AppImages.sandwich, name: 'Sandwich'),
    MenuOptionModel(id: 4, image: AppImages.pasta, name: 'Noodle\'s pasta'),
    MenuOptionModel(id: 5, image: AppImages.taco, name: 'Taco Kebab'),
    MenuOptionModel(id: 6, image: AppImages.fries, name: 'Plain Fries'),
    MenuOptionModel(id: 7, image: AppImages.drumSticks, name: 'Drum Stick'),
    MenuOptionModel(id: 8,image: AppImages.nuggets, name: 'Nuggets'),
    MenuOptionModel(id: 9,image: AppImages.cake, name: 'Strawberry Cake'),
    MenuOptionModel(id: 10, image: AppImages.sauce, name: 'Tomato Sauce'),
  ];

}
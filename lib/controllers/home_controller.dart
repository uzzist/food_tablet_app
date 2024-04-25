import 'package:food_tablet_app/utils/values/app_images/app_images.dart';
import 'package:get/get.dart';

import '../data/models/home_models/menu_option_model.dart';

class HomeController extends GetxController {

  List<MenuOptionModel> menuOptionList = [
    MenuOptionModel(image: AppImages.burger, name: 'Burgers'),
    MenuOptionModel(image: AppImages.pizza, name: 'Chicken Pizza'),
    MenuOptionModel(image: AppImages.sandwich, name: 'Sandwich'),
    MenuOptionModel(image: AppImages.pasta, name: 'Noodle\'s pasta'),
    MenuOptionModel(image: AppImages.taco, name: 'Taco Kebab'),
    MenuOptionModel(image: AppImages.fries, name: 'Plain Fries'),
    MenuOptionModel(image: AppImages.drumSticks, name: 'Drum Stick'),
    MenuOptionModel(image: AppImages.nuggets, name: 'Nuggets'),
    MenuOptionModel(image: AppImages.cake, name: 'Strawberry Cake'),
    MenuOptionModel(image: AppImages.sauce, name: 'Tomato Sauce'),
  ];

}
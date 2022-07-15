import 'package:get/get.dart';
import 'package:shooping_app/view/screens/category_screen.dart';
import 'package:shooping_app/view/screens/faviorite_screen.dart';

import '../view/screens/home_screen.dart';
import '../view/screens/settings.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  final item = [
    const HomeScreen(),
    const CategoryScreen(),
    const FavoriteScreen(),
    const SettingScreen()
  ].obs;

  final title = ['Asroo Shop', 'Category', 'Favorite', 'Settings'].obs;
}
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/features/user/home/views/home_screen.dart';
import 'package:the_solar_spark/features/user/profile/views/profile_screen.dart';

import '../../../../commons/common_libs.dart';

final mainMenuProvider = ChangeNotifierProvider((ref) => MainMenuController());

class MainMenuController extends ChangeNotifier {
  List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
  ];

  int _index = 0;
  int get index => _index;
  setIndex(int id) {
    _index = id;
    notifyListeners();
  }
}

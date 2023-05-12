import 'package:flutter/material.dart';
import 'package:the_solar_spark/features/auth/views/forget_pass_screen.dart';
import 'package:the_solar_spark/features/auth/views/login_screen.dart';
import 'package:the_solar_spark/features/auth/views/register_login_screen.dart';
import 'package:the_solar_spark/features/auth/views/register_screen.dart';
import 'package:the_solar_spark/features/auth/views/reset_pass_screen.dart';
import 'package:the_solar_spark/features/user/main_menu/views/main_menu_screen.dart';
import 'package:the_solar_spark/features/user/profile/views/profile_screen.dart';
import 'package:the_solar_spark/features/splash/views/splash_screen.dart';
import 'package:the_solar_spark/utils/error_screen.dart';
import 'navigation.dart';

class AppRoutes {
//Common Portion
  static const String userSplashScreen = '/userSplashScreen';
  static const String userRegisterLoginScreen = '/userRegisterLogin';
  static const String userLoginScreen = '/userLogin';
  static const String userRegisterScreen = '/userRegister';
  static const String userForgetPassScreen = '/userForgetPass';
  static const String userResetPassScreen = '/userResetPass';
  static const String userMainMenuScreen = '/userMainMenuScreen';
  static const String singleCourseScreen = '/singleCourseScreen';
  static const String courseJoinFormScreen = '/courseJoinFormScreen';
  static const String feedsScreen = '/feedsScreen';
  static const String userProfileScreen = '/userProfileScreen';
  static const String readSeeAllScreen = '/ReadSeeAllScreen';
  static const String watchSeeAllScreen = '/watchSeeAllScreen';
  static const String singleArticleScreen = '/SingleArticleScreen';
  static const String singleVideoScreen = '/SingleVideoScreen';


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case userSplashScreen:
        return _buildRoute(const SplashScreen());
      case userRegisterLoginScreen:
        return _buildRoute(const UserRegisterLoginScreen());
      case userRegisterScreen:
        return _buildRoute(const UserRegisterScreen());
      case userMainMenuScreen:
        return _buildRoute(const MainMenuScreen());
      case userForgetPassScreen:
        return _buildRoute(const ForgetPasswordScreen());
      case userLoginScreen:
        return _buildRoute(const UserLoginScreen());
      case userResetPassScreen:
        return _buildRoute(const ResetPassScreen());
      case userProfileScreen:
        return _buildRoute(const ProfileScreen());






      default:
        return unDefinedRoute();
    }
  }

  static unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              backgroundColor: Colors.white,
            ));
    return MaterialPageRoute(builder: (_) => const ErrorScreen());
  }

  static _buildRoute(Widget widget, {int? duration = 400}) {
    return forwardRoute(widget, duration);
  }

  static _buildNormalRoute(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}

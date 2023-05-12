import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/features/auth/controller/auth_controller.dart';
import 'package:the_solar_spark/features/auth/views/login_screen.dart';
import 'package:the_solar_spark/features/splash/views/main_loading.dart';
import 'package:the_solar_spark/features/user/main_menu/views/main_menu_screen.dart';
import 'package:the_solar_spark/features/user/profile/controller/profile_controller.dart';
import 'package:the_solar_spark/firebase_options.dart';
import 'package:the_solar_spark/routes/route_manager.dart';
import 'package:the_solar_spark/utils/constants/app_constants.dart';
import 'package:the_solar_spark/utils/loading.dart';
import 'package:the_solar_spark/utils/thems/theme.dart';
import 'package:the_solar_spark/utils/thems/my_colors.dart';

import 'features/splash/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // SystemChrome.setSystemUIOverlayStyle(
  //    const SystemUiOverlayStyle(
  //     statusBarColor: MyColors.themeDarkColor,
  //   ),
  // );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize:
          const Size(AppConstants.screenWidget, AppConstants.screenHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'the_solar_spark',
          theme: lightThemeData(context),
          onGenerateRoute: AppRoutes.onGenerateRoute,
          // initialRoute: AppRoutes.adminHomeScreen,
          // home: const CreateArtcileScreen(),
          home: ref.watch(userStateStreamProvider).when(
              data: (user) {
                if (user != null) {
                  return  const MainMenuScreen();
                } else {
                  return const SplashScreen();
                }
              },
              error: (error, st) => const UserLoginScreen(),
              loading: () => const LoadingWidget()),
        );
      },
    );
  }
}



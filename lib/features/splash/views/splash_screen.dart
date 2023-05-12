import 'package:the_solar_spark/routes/route_manager.dart';
import 'package:the_solar_spark/utils/constants/app_constants.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';
import '../../../commons/common_libs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(
            context, AppRoutes.userRegisterLoginScreen));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.themeDarkColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logo,
              width: 220.w,
              height: 150.h,
            ),
            SizedBox(height: 5.h,),
            Text(
              AppConstants.appName,
              style: getSemiBoldStyle(fontSize: 32.spMin, color: MyColors.white),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 200.h,
              child: Text(
                AppConstants.appTagLine,
                style: getMediumStyle(fontSize: 16.spMin, color: MyColors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
          ],
        ),
      ),
    );
  }
}

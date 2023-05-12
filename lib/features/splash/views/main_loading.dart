import 'package:the_solar_spark/routes/route_manager.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';
import '../../../commons/common_libs.dart';

class MainLoadingScreen extends StatelessWidget {
  const MainLoadingScreen({Key? key}) : super(key: key);


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
              width: 157.w,
              height: 63.h,
            ),
            Text(
              'Kanz ul Huda',
              style: getSemiBoldStyle(fontSize: 32.spMin, color: MyColors.white),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'A Treasure of True Guidance',
              style: getMediumStyle(fontSize: 16.spMin, color: MyColors.white),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}

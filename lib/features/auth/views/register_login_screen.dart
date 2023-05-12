import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/commons/common_widgets/custom_button.dart';
import 'package:the_solar_spark/commons/common_widgets/custom_outline_button.dart';
import 'package:the_solar_spark/routes/route_manager.dart';
import 'package:the_solar_spark/utils/constants/app_constants.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';

class UserRegisterLoginScreen extends StatefulWidget {
  const UserRegisterLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  _UserRegisterLoginScreenState createState() => _UserRegisterLoginScreenState();
}

class _UserRegisterLoginScreenState extends State<UserRegisterLoginScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.themeDarkColor,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height:size.height*0.65,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(
                        AppAssets.registerBg,
                      ))),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: (size.height * 0.6),
            child: Container(
              height: size.height - (size.height * 0.6),
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              decoration: BoxDecoration(
                color: MyColors.themeDarkColor,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5.w, -3.h),
                    blurRadius: 20.r,
                    color: Colors.black.withOpacity(0.2),
                  )
                ],
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    SizedBox(height:10.h),
                    Container(width: 48.w,height:4.h,decoration: BoxDecoration(
                      color: MyColors.themeColor,
                      borderRadius: BorderRadius.circular(5.r)
                    ),),
                    SizedBox(height:20.h),
                    Text(
                      AppConstants.appName,
                      style: getSemiBoldStyle(
                          fontSize: 32.spMin, color: MyColors.white),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      AppConstants.appTagLine,
                      style: getMediumStyle(
                          fontSize: 16.spMin, color: MyColors.white),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(onPressed: (){
                      Navigator.pushNamed(context, AppRoutes.userRegisterScreen);
                    }, buttonText: 'Register'),
                    CustomOutlineButton(onPressed: (){
                      Navigator.pushNamed(context, AppRoutes.userLoginScreen);

                    }, buttonText: 'Login'),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, AppRoutes.userForgetPassScreen);

                    }, child: Text(
                      'Forgot Password?',
                      style: getMediumStyle(
                          fontSize: 14.spMin, color: MyColors.white),
                    ),),


                  ])),
            ),
          ),
        ],
      ),
    );
  }
}

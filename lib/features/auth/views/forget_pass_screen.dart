import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_widgets/CustomTextFields.dart';
import 'package:the_solar_spark/commons/common_widgets/custom_button.dart';
import 'package:the_solar_spark/features/auth/controller/auth_controller.dart';
import 'package:the_solar_spark/routes/route_manager.dart';
import 'package:the_solar_spark/utils/constants/app_constants.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';

import '../../../commons/common_libs.dart';

class ForgetPasswordScreen extends ConsumerStatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ForgetPasswordScreen> createState() =>
      _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends ConsumerState<ForgetPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  GlobalKey<FormState> forgetKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }


  forgotPass() async {
    if (forgetKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus!.unfocus();
      final authCtr = ref.read(authControllerProvider.notifier);
      await authCtr.forgotPassword(
          email: _emailController.text, context: context);
      setState(() {
        _emailController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.userLoginScreen);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'login',
                      style: getMediumStyle(
                          color: MyColors.bodyColor, fontSize: 14.spMin),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18.h,
                      color: MyColors.bodyColor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                AppAssets.logo,
                width: 170.w,
                height: 90.h,
              ),
              Text(AppConstants.appName,
                  style: getBoldStyle(
                    fontSize: 30.spMin,
                  )),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.w),
                child: Text(
                  'Please enter your registered email address to receive a reminder of your password',
                  style: getRegularStyle(
                    fontSize: 12.spMin,
                    color: MyColors.bodyColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Form(
                key: forgetKey,
                child: CustomTextField2(
                  controller: _emailController,
                  onChanged: (val) {},
                  onFieldSubmitted: (val) {},
                  labelText: 'Email Address',
                  hintText: 'Type email address here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onPressed: forgotPass,
                buttonText: 'Send Email',
                isLoading: ref.watch(authControllerProvider),
                backColor: MyColors.themeDarkColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_widgets/CustomTextFields.dart';
import 'package:the_solar_spark/commons/common_widgets/custom_button.dart';
import 'package:the_solar_spark/commons/common_widgets/validator.dart';
import 'package:the_solar_spark/features/auth/controller/auth_controller.dart';
import 'package:the_solar_spark/routes/route_manager.dart';
import 'package:the_solar_spark/utils/constants/app_constants.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';
import '../../../commons/common_libs.dart';

class UserLoginScreen extends ConsumerStatefulWidget {
  const UserLoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends ConsumerState<UserLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  var passObscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  login() async {
    if (loginKey.currentState!.validate()) {
      final authCtr = ref.read(authControllerProvider.notifier);
      await authCtr.signInUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passController.text,
          context: context);

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
                height: 70.h,
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
                EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 60.w),
                child: Text(
                  'Please login to effortlessly monitor your solar panel readings',
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
                key: loginKey,
                child: Column(
                  children: [
                    CustomTextField2(
                      controller: _emailController,
                      validatorFn: emailValidator,
                      onChanged: (val) {},
                      onFieldSubmitted: (val) {},
                      labelText: 'Email Address',
                      hintText: 'Type email address here',
                    ),
                    CustomTextFieldWithIcon(
                      controller: _passController,
                      validatorFn: passValidator,
                      onChanged: (val) {},
                      onFieldSubmitted: (val) {},
                      labelText: 'Password',
                      hintText: 'Type password',
                      obscure: passObscure,
                      leadingIcon: passObscure == false
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  passObscure = !passObscure;
                                });
                              },
                              child: Icon(
                                CupertinoIcons.eye,
                                color: MyColors.bodyColor,
                                size: 20.h,
                              ))
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  passObscure = !passObscure;
                                });
                              },
                              child: Icon(
                                CupertinoIcons.eye_slash,
                                color: MyColors.bodyColor,
                                size: 20.h,
                              )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.userForgetPassScreen);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: getMediumStyle(
                          color: MyColors.themeColor, fontSize: 12.spMin),
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onPressed: login,
                buttonText: 'Login',
                isLoading: ref.watch(authControllerProvider),
                backColor: MyColors.themeDarkColor,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have a account? ",style: getRegularStyle(fontSize: 12.spMin,color: MyColors.bodyColor),),
                  GestureDetector(onTap:(){
                    Navigator.pushNamed(context, AppRoutes.userRegisterScreen);
                  },child: Text("Register ",style: getMediumStyle(fontSize: 12.spMin,color: MyColors.themeColor),)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

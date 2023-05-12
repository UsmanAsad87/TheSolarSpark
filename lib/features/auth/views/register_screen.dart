import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_widgets/CustomTextFields.dart';
import 'package:the_solar_spark/commons/common_widgets/custom_button.dart';
import 'package:the_solar_spark/commons/common_widgets/show_toast.dart';
import 'package:the_solar_spark/commons/common_widgets/validator.dart';
import 'package:the_solar_spark/features/auth/controller/auth_controller.dart';
import 'package:the_solar_spark/routes/route_manager.dart';
import 'package:the_solar_spark/utils/constants/app_constants.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';

import '../../../commons/common_libs.dart';

class UserRegisterScreen extends ConsumerStatefulWidget {
  const UserRegisterScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UserRegisterScreen> createState() => _UserRegisterScreenState();
}

class _UserRegisterScreenState extends ConsumerState<UserRegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  GlobalKey<FormState> registerKey = GlobalKey<FormState>();
  var passObscure = true;
  var conPassObscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _nameController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }



  signUp() async {
    if (registerKey.currentState!.validate()) {
        if (_passController.text==_confirmPassController.text) {
          final authCtr = ref.read(authControllerProvider.notifier);
          await authCtr.registerWithEmailAndPassword(
              name: _nameController.text,
              email: _emailController.text,
              password: _passController.text,
              context: context
          );
          Navigator.pushNamedAndRemoveUntil(
              context, AppRoutes.userMainMenuScreen,(route)=>false);
          setState(() {
            _nameController.clear();
            _emailController.clear();
            _confirmPassController.clear();
            _passController.clear();
          });
        }else{
          showToast(msg: "Password didn't match");
        }
      }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                      EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 30.w),
                  child: Text(
                    'Please create an account to get a clear picture of your solar panel output',
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
                  key: registerKey ,
                  child: Column(
                    children: [
                      CustomTextField2(
                        controller: _nameController,
                        validatorFn: uNameValidator,
                        onChanged: (val) {},
                        onFieldSubmitted: (val) {},
                        labelText: 'Full Name',
                        hintText: 'Type fullname here',
                      ),


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
                      CustomTextFieldWithIcon(
                        controller:_confirmPassController,
                        validatorFn: passValidator,
                        onChanged: (val) {},
                        onFieldSubmitted: (val) {},
                        labelText: 'Confirm Password',
                        hintText: 'Re-type password',
                        obscure: conPassObscure,
                        leadingIcon:conPassObscure == false
                            ? InkWell(
                            onTap: () {
                              setState(() {
                               conPassObscure = !conPassObscure;
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
                                conPassObscure = !conPassObscure;
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
                  height: 20.h,
                ),
                CustomButton(
                  onPressed:signUp,
                  isLoading: ref.watch(authControllerProvider),
                  buttonText: 'Register',
                  backColor: MyColors.themeDarkColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

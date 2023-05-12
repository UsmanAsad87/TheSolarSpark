import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_widgets/CustomTextFields.dart';
import 'package:the_solar_spark/commons/common_widgets/custom_button.dart';
import 'package:the_solar_spark/commons/common_widgets/show_toast.dart';
import 'package:the_solar_spark/commons/common_widgets/validator.dart';
import 'package:the_solar_spark/features/auth/controller/auth_controller.dart';
import 'package:the_solar_spark/utils/constants/app_constants.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';

import '../../../commons/common_libs.dart';

class ResetPassScreen extends ConsumerStatefulWidget {
  const ResetPassScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends ConsumerState<ResetPassScreen> {
  final TextEditingController _confirmPassController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _currentPassController = TextEditingController();
  GlobalKey<FormState> resetKey = GlobalKey<FormState>();
  var passObscure = true;
  var confirmObscure = true;
  var oldPassObscure = true;

  @override
  void dispose() {
    _confirmPassController.dispose();
    _passController.dispose();
    _currentPassController.dispose();
    super.dispose();
  }



  resetPass() async {
    if (resetKey.currentState!.validate()) {
      if (_passController.text == _confirmPassController.text) {
        final authCtr = ref.read(authControllerProvider.notifier);
        await authCtr.changeUserPassword(
            currentPass: _currentPassController.text,
            newPass: _passController.text,
            context: context);
        setState(() {
          _currentPassController.clear();
          _passController.clear();
          _confirmPassController.clear();
        });
      } else {
        showSnackBar(context, 'Re-check confirm password!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: MyColors.titleColor,
            size: 15.h,
          ),
        ),
      ),
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 80.w),
                child: Text(
                  'Please create a new password for your account',
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
                key: resetKey,
                child: Column(
                  children: [
                    CustomTextFieldWithIcon(
                      controller: _currentPassController,
                      onChanged: (val) {},
                      onFieldSubmitted: (val) {},
                      labelText: 'Current Password',
                      hintText: 'Type current password',
                      validatorFn: passValidator,
                      obscure: oldPassObscure,
                      leadingIcon: oldPassObscure == false
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  oldPassObscure = !oldPassObscure;
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
                                  oldPassObscure = !oldPassObscure;
                                });
                              },
                              child: Icon(
                                CupertinoIcons.eye_slash,
                                color: MyColors.bodyColor,
                                size: 20.h,
                              )),
                    ),
                    CustomTextFieldWithIcon(
                      controller: _passController,
                      onChanged: (val) {},
                      onFieldSubmitted: (val) {},
                      validatorFn: passValidator,
                      labelText: 'New Password',
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
                      controller: _confirmPassController,
                      onChanged: (val) {},
                      onFieldSubmitted: (val) {},
                      validatorFn: passValidator,
                      labelText: 'Retype New Password',
                      hintText: 'Type password',
                      obscure: confirmObscure,
                      leadingIcon: confirmObscure == false
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  confirmObscure = !confirmObscure;
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
                                  confirmObscure = !confirmObscure;
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
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onPressed: resetPass,
                buttonText: 'Reset Password',
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

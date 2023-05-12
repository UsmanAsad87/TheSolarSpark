import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_widgets/custom_button.dart';
import 'package:the_solar_spark/features/auth/controller/auth_controller.dart';
import 'package:the_solar_spark/features/user/profile/widgets/security_widget.dart';
import 'package:the_solar_spark/features/user/profile/widgets/user_data_widget.dart';

import '../../../../commons/common_libs.dart';
import '../../main_menu/controller/main_menu_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  logout(WidgetRef ref, BuildContext context) async {
    final authCtr = ref.read(authControllerProvider.notifier);
    await authCtr.logout(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        title: Text(
          'Settings',
          style: getSemiBoldStyle(fontSize: 16.spMin),
        ),
        centerTitle: true,
        leading: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final mainProvider = ref.watch(mainMenuProvider);
            return IconButton(
              onPressed: () {
                mainProvider.setIndex(0);
              },
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: MyColors.titleColor,
                size: 15.h,
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserDataWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
                child: Consumer(builder:
                    (BuildContext context, WidgetRef ref, Widget? child) {
                  return CustomButton(
                    onPressed: () => logout(ref, context),
                    buttonText: 'Sign out',
                    buttonHeight: 40.h,
                    fontSize: 14.spMin,
                  );
                }),
              ),
              const SecurityWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

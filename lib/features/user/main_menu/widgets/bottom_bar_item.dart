import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/features/user/main_menu/controller/main_menu_controller.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.mainMenuCtr,
    required this.onTap,
    required this.label,
    required this.icon,
    required this.index,
  });

  final MainMenuController mainMenuCtr;
  final Function() onTap;
  final String label;
  final String icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 50.h,
      color: MyColors.white,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon,
                width: 25.w,
                height: 25.h,
                color: mainMenuCtr.index == index
                    ? MyColors.themeColor
                    : MyColors.navUnselectColor),
            SizedBox(
              height: 2.h,
            ),
            Text(
              label,
              style:
                  getMediumStyle(fontSize: 10.spMin, color: MyColors.titleColor),
            )
          ],
        ),
      ),
    );
  }
}

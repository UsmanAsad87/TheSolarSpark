import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';

class CustomBox extends StatelessWidget {
  final Color color;
  final String svg;
  final String title1;
  final String title2;
  final Color titleColor;
  final Function() onPress;
  final bool isImageDec;

  const CustomBox({
    required this.color,
    required this.svg,
    required this.title1,
    required this.title2,
    required this.titleColor,
    super.key,
    required this.onPress,
    this.isImageDec = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 90.h,
        width: MediaQuery.of(context).size.width / 2 - 20.w,
        decoration: BoxDecoration(
          color: color,
          image: isImageDec
              ? const DecorationImage(
                  image: AssetImage(AppAssets.registerBg), fit: BoxFit.cover)
              : null,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                    padding: EdgeInsets.only(bottom: 5.h, right: 5.w),
                    child: SvgPicture.asset(svg,
                        width: 25.w,
                        height: 25.h,
                        color: MyColors.themeColor))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: title1,
                    style: getMediumStyle(
                        fontSize: 10.spMin, color: MyColors.themeColor)),
                TextSpan(
                    text: title2,
                    style: getMediumStyle(fontSize: 12.spMin, color: titleColor)),
              ])),
            )
          ],
        ),
      ),
    );
  }
}

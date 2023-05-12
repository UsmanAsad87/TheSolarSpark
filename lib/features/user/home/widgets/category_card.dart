import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';
import 'package:the_solar_spark/utils/launchUrl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main_menu/controller/main_menu_controller.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
  });

  final List<Map<String, dynamic>> categories = [
    {
      'icon': AppAssets.readIcon,
      'title': 'Read',
    },
    {
      'icon': AppAssets.playIcon,
      'title': 'Watch',
    },
    {
      'icon': AppAssets.donateIcon,
      'title': 'Donate',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final mainProvider = ref.watch(mainMenuProvider);
      return Card(
        elevation: 1,
        child: Container(
            margin: EdgeInsets.only(left: 25.w),
            height: 69.h,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        mainProvider.setIndex(1);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            categories[0]['icon'],
                            height: 25.h,
                            width: 25.w,
                          ),
                          Text(categories[0]['title'],
                              style: GoogleFonts.sourceSansPro(
                                  color: MyColors.themeDarkColor,
                                  fontSize: 12.spMin,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: VerticalDivider(
                        color: Color(0xffE6E4E4),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        mainProvider.setIndex(1);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            categories[1]['icon'],
                            height: 25.h,
                            width: 25.w,
                          ),
                          Text(categories[1]['title'],
                              style: GoogleFonts.sourceSansPro(
                                  color: MyColors.themeDarkColor,
                                  fontSize: 12.spMin,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.h),
                      child: const VerticalDivider(
                        color: Color(0xffE6E4E4),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: ()async {
                        // https://kuhzulhuda.page.link/nPwh
                        // await launch('https://kuhzulhuda.page.link/nPwh' );
                        // // launchURL(Url:'https://kuhzulhuda.page.link/nPwh' );
                        launchURL(Url:'https://www.kanzulhuda.com/our-causes/' );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            categories[2]['icon'],
                            height: 25.h,
                            width: 25.w,
                          ),
                          Text(categories[2]['title'],
                              style: GoogleFonts.sourceSansPro(
                                  color: MyColors.themeDarkColor,
                                  fontSize: 12.spMin,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                )
              ],
            )),
      );
    });
  }
}

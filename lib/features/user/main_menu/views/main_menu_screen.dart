import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_solar_spark/features/user/main_menu/controller/main_menu_controller.dart';
import 'package:the_solar_spark/features/user/main_menu/widgets/bottom_bar_item.dart';
import 'package:the_solar_spark/features/user/main_menu/widgets/bottom_bar_png_item.dart';
import 'package:the_solar_spark/utils/constants/assets_manager.dart';
import 'package:the_solar_spark/utils/launchUrl.dart';
import 'package:the_solar_spark/utils/thems/my_colors.dart';

class MainMenuScreen extends ConsumerStatefulWidget {
  const MainMenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends ConsumerState<MainMenuScreen> {


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final mainMenuCtr = ref.watch(mainMenuProvider);
          return IndexedStack(
            children: [mainMenuCtr.screens[mainMenuCtr.index]],
          );
        },
      ),
      bottomNavigationBar: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final mainMenuCtr = ref.watch(mainMenuProvider);
          return Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyColors.white,
            ),
            child: BottomAppBar(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomBarItem(
                      mainMenuCtr: mainMenuCtr,
                      onTap: () {
                        mainMenuCtr.setIndex(0);
                      },
                      label: 'Home',
                      icon: AppAssets.homeIcon,
                      index: 0,
                    ),
                    BottomBarItem(
                      mainMenuCtr: mainMenuCtr,
                      onTap: () {
                        mainMenuCtr.setIndex(1);
                      },
                      label: 'Graphs',
                      icon: AppAssets.exploreIcon,
                      index: 1,
                    ),
                    BottomBarItem(
                      mainMenuCtr: mainMenuCtr,
                      onTap: () {
                        mainMenuCtr.setIndex(2);
                      },
                      label: 'Profile',
                      icon: AppAssets.profileIcon,
                      index: 2,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

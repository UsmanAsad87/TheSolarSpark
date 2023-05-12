
import 'package:the_solar_spark/utils/constants/assets_manager.dart';

import '../../../../commons/common_libs.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            AppAssets.logo,
            color: MyColors.titleColor,
            width: 137.w,
            height: 63.h,
          ),
          Text('Kanz ul Huda',
              style: getBoldStyle(
                fontSize: 30.spMin,
              )),
          Padding(
            padding:
            EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 20.w),
            child: Text(
              "This feature will be\n releasing soon",
              style: getRegularStyle(
                fontSize: 14.spMin,
                color: MyColors.bodyColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10.h,),
        ],
      ),
    );
  }
}

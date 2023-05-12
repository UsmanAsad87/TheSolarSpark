
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:the_solar_spark/features/user/home/provider/location_provider.dart';

import '../../../../commons/common_libs.dart';

class DateLocationWidget extends StatelessWidget {
  const DateLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(DateFormat.yMMMEd().format(DateTime.now()),
              style: getSemiBoldStyle(fontSize: 14.spMin)),
        ),
        Consumer(builder: (context, ref, child) {
          return ref.watch(geoLocationProvider).when(
            data: (prayerTiming) => Text(prayerTiming,
                style: getSemiBoldStyle(fontSize: 14.spMin,color: MyColors.themeColor)),
            loading: () {
              return SizedBox();
            },
            error: (error, stackTrace) {
              // showToast(msg: 'Failed to load data');
              return SizedBox();
            },
          );
        }),
      ],
    );
  }
}

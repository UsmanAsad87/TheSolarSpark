import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/commons/common_widgets/show_toast.dart';
import 'package:the_solar_spark/features/user/home/provider/timing_provider.dart';
import 'package:the_solar_spark/models/prayer_timing_model.dart';
import 'package:the_solar_spark/utils/loading.dart';

import '../../../../apis/apis_commons.dart';

class PrayerTimingWidget extends StatelessWidget {
  const PrayerTimingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer(builder: (context, ref, child) {
          return ref.watch(prayerTimesProvider).when(
                data: (prayerTiming) => ListView.builder(
                    itemCount: prayerTimings.length,
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      List<String> time = [
                        prayerTiming.fajr,
                        prayerTiming.sunrise,
                        prayerTiming.zuhr,
                        prayerTiming.asr,
                        prayerTiming.maghrib,
                        prayerTiming.isha
                      ];
                      return SizedBox(
                        height: 40.h,
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  prayerTimings[index]['title'].toString(),
                                  style: getRegularStyle(
                                      color: MyColors.bodyColor,
                                      fontSize: 12.spMin),
                                ),
                                Container(
                                  height: 22,
                                  width: 92,
                                  decoration: BoxDecoration(
                                      color: index == 0 || index == 4
                                          ? MyColors.kGreyColor
                                          : MyColors.kDeepOrange,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      time[index],
                                      style: getMediumStyle(
                                          color: MyColors.white,
                                          fontSize: 13.spMin),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                loading: () {
                  return ListView.builder(
                      itemCount: prayerTimings.length,
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 40.h,
                          child: Card(
                            elevation: 5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    prayerTimings[index]['title'].toString(),
                                    style: getRegularStyle(
                                        color: MyColors.bodyColor,
                                        fontSize: 12.spMin),
                                  ),
                                  Container(
                                    height: 22,
                                    width: 92,
                                    decoration: BoxDecoration(
                                        color: index == 0 || index == 4
                                            ? MyColors.kGreyColor
                                            : MyColors.kDeepOrange,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: LoadingWidget(
                                        color: Colors.white,
                                        size: 15.h,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                error: (error, stackTrace) {
                  showToast(msg: 'Failed to load data');
                  return ListView.builder(
                      itemCount: prayerTimings.length,
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        List<String> time = [
                          '00:00',
                          '00:00',
                          '00:00',
                          '00:00',
                          '00:00',
                          '00:00',
                        ];
                        return SizedBox(
                          height: 40.h,
                          child: Card(
                            elevation: 5,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    prayerTimings[index]['title'].toString(),
                                    style: getRegularStyle(
                                        color: MyColors.bodyColor,
                                        fontSize: 12.spMin),
                                  ),
                                  Container(
                                    height: 22,
                                    width: 92,
                                    decoration: BoxDecoration(
                                        color: index == 0 || index == 4
                                            ? MyColors.kGreyColor
                                            : MyColors.kDeepOrange,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        time[index],
                                        style: getMediumStyle(
                                            color: MyColors.white,
                                            fontSize: 13.spMin),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
              );
        }),
        // ListView.builder(
        //     itemCount: prayerTimings.length,
        //     padding: EdgeInsets.symmetric(vertical: 20.h),
        //     shrinkWrap: true,
        //     physics: const NeverScrollableScrollPhysics(),
        //     itemBuilder: (context, index) {
        //       List<String> time = [
        //         prayerTime.timing.fajr,
        //         prayerTime.timing.sunrise,
        //         prayerTime.timing.zuhr,
        //         prayerTime.timing.asr,
        //         prayerTime.timing.maghrib,
        //         prayerTime.timing.isha
        //       ];
        //       return SizedBox(
        //         height: 40.h,
        //         child: Card(
        //           elevation: 5,
        //           child: Padding(
        //             padding: const EdgeInsets.symmetric(horizontal: 20),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   prayerTimings[index]['title'].toString(),
        //                   style: getRegularStyle(color:MyColors.bodyColor,fontSize: 12.spMin),
        //                 ),
        //                 Container(
        //                   height: 22,
        //                   width: 92,
        //                   decoration: BoxDecoration(
        //                       color: index == 0 || index == 4
        //                           ? MyColors.kGreyColor
        //                           : MyColors.kDeepOrange,
        //                       borderRadius: BorderRadius.circular(5)),
        //                   child: Center(
        //                     child: Text(
        //                       time[index],
        //                       style: getMediumStyle(color: MyColors.white,fontSize: 13.spMin),
        //                     ),
        //                   ),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //       );
        //     }),
      ],
    );
  }
}

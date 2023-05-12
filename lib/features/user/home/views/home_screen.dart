import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/features/user/home/widgets/date_location_widget.dart';
import 'package:the_solar_spark/features/user/home/widgets/prayer_timing.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                DateLocationWidget(),
                PrayerTimingWidget(),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 90.h,
                ),

                //
                // PrayerTimeTable(prayerTimeData: prayerTimeData),
                // SizedBox(height: 100.h,),
              ]),
        ),
      ),
    );
  }
}

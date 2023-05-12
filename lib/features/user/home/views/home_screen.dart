import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/commons/common_widgets/padding.dart';
import 'package:the_solar_spark/features/user/home/provider/weather_provider.dart';
import 'package:the_solar_spark/features/user/home/widgets/current_weather.dart';
import 'package:the_solar_spark/features/user/home/widgets/dialy_weather_widget.dart';
import 'package:the_solar_spark/features/user/home/widgets/hourly_weather_widget.dart';
import 'package:the_solar_spark/features/user/home/widgets/weather_detail_widget.dart';
import 'package:the_solar_spark/utils/loading.dart';


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
      body: Consumer(builder: (context, ref, child) {
        return ref.watch(weatherProvider).when(
          data: (weather) {
            return SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CurrentWeather(weather: weather),
                    padding16,
                    WeatherDetailsWidget(curWeather: weather.current),
                    padding16,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "24 Hours",
                        style: getSemiBoldStyle(fontSize: 14.spMin),
                      ),
                    ),
                    padding8,
                    HourlyWeatherWidget(hourWeather: weather.hourly),
                    padding16,
                    DailyWeatherWidget(dailyWeather: weather.daily)
                  ],
                ),
              ),
            );
          },
          loading: () {
            return LoadingWidget();
          },
          error: (error, stackTrace) {
            // showToast(msg: 'Failed to load data');
            return  Text(error.toString(),
                style: getSemiBoldStyle(fontSize: 14.spMin,color: MyColors.themeColor));
          },
        );
      }),
    );
  }
}

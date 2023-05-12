
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/commons/common_widgets/padding.dart';
import 'package:the_solar_spark/features/user/home/models/weather_one_call_model.dart';
import 'package:the_solar_spark/features/user/home/provider/location_provider.dart';
import 'package:the_solar_spark/utils/constants/image_const.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final WeatherData weather;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return SizedBox(
      width: _size.width,
      child: Stack(
        children: [
          Positioned(
            top: -_size.width * 0.2,
            right: -_size.width * 0.25,
            child: Image.asset(
              ImageAssets.getAsset(weather.current.weather.first.icon),
              height: _size.height * 0.35,
            ),
          ),
          Container(
            width: _size.width * 0.55,
            padding: EdgeInsets.symmetric(
                horizontal: _size.width * 0.08, vertical: _size.height * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(DateFormat.MMMEd().format(DateTime.now()),
                      style: getSemiBoldStyle(fontSize: 12.spMin,color: MyColors.bodyColor)),
                ),
                padding8,
                Consumer(builder: (context, ref, child) {
                  return ref.watch(geoLocationProvider).when(
                    data: (place) => Text(place,
                        style: getSemiBoldStyle(fontSize: 14.spMin,color: MyColors.themeDarkColor)),
                    loading: () {
                      return Text(' ',
                          style: getSemiBoldStyle(fontSize: 14.spMin,color: MyColors.themeDarkColor));
                    },
                    error: (error, stackTrace) {
                      // showToast(msg: 'Failed to load data');
                      return Text(' ',
                          style: getSemiBoldStyle(fontSize: 14.spMin,color: MyColors.themeDarkColor));
                    },
                  );
                }),
                padding8,
                Text('${weather.current.temp}°',
                    textAlign: TextAlign.center,
                    style: getMediumStyle(fontSize: 18.spMin,color: MyColors.titleColor)),
                padding8,

                WeatherTypeChip(title: weather.current.weather.first.main),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


class WeatherTypeChip extends StatelessWidget {
  const WeatherTypeChip({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: MyColors.themeDarkColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Text(
        title,
        style:getMediumStyle(fontSize: 14.spMin,color: MyColors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
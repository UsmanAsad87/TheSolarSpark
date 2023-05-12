import 'package:flutter/material.dart';
import 'package:the_solar_spark/commons/common_libs.dart';

import '../models/current_model.dart';

class WeatherDetailsWidget extends StatelessWidget {
  const WeatherDetailsWidget({
    Key? key,
    required this.curWeather,
  }) : super(key: key);

  final Current curWeather;

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2,
        crossAxisCount: 3,
      ),
      children: [
        HeadingDetailWidget(
          title: "Humidity",
          value: '${curWeather.humidity}',
          unit: '%',
        ),
        HeadingDetailWidget(
            title: "Wind Speed", value: '${curWeather.windSpeed}', unit: 'm/s'),
        HeadingDetailWidget(
            title: "Pressure", value: '${curWeather.pressure}', unit: 'hPa'),
        HeadingDetailWidget(title: "UV", value: '${curWeather.uvi}'),
        HeadingDetailWidget(
            title: "Visibility", value: '${curWeather.visibility}', unit: 'km'),
        HeadingDetailWidget(
            title: "Cloudiness", value: '${curWeather.clouds}', unit: '%'),
      ],
    );
  }
}

class HeadingDetailWidget extends StatelessWidget {
  final String title;
  final String value;
  final String unit;

  const HeadingDetailWidget({
    Key? key,
    required this.title,
    required this.value,
    this.unit = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      margin: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: MyColors.themeColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(
              title,
              style: getMediumStyle(fontSize: 12.spMin,color: MyColors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: value,
                style: getSemiBoldStyle(fontSize: 14.spMin,color: MyColors.white),
              ),
              TextSpan(
                text: ' $unit',
                style: getSemiBoldStyle(fontSize: 12.spMin,color: MyColors.white),
              ),
            ])),
          ),
        ],
      ),
    );
  }
}

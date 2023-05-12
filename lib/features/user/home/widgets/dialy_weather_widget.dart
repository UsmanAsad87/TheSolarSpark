import 'package:flutter/material.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/commons/common_widgets/padding.dart';
import 'package:the_solar_spark/utils/constants/image_const.dart';
import 'package:the_solar_spark/utils/utils.dart';
import '../models/daily_model.dart';

class DailyWeatherWidget extends StatelessWidget {
  const DailyWeatherWidget({Key? key, required this.dailyWeather})
      : super(key: key);
  final List<Daily> dailyWeather;

  @override
  Widget build(BuildContext context) {
    final List<Daily> dailyWeather2=dailyWeather.sublist(1);
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dailyWeather2.length,
          itemBuilder: (context, index) {
            return DaySummaryWidget2(dailyWeather: dailyWeather2[index]);
          }, gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3,
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.h,
      ),),
    );Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dailyWeather.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const SizedBox();
            }
            return DaySummaryWidget(dailyWeather: dailyWeather[index]);
          }),
    );
  }
}

class DaySummaryWidget extends StatelessWidget {
  const DaySummaryWidget({
    Key? key,
    required this.dailyWeather,
  }) : super(key: key);

  final Daily dailyWeather;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: MyColors.themeColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              getDayFromEpoch(dailyWeather.dt),
              style: getMediumStyle(fontSize: 14.spMin,color: MyColors.titleColor),
            ),
          ),
          Image.asset(
            ImageAssets.getSmallAsset(dailyWeather.weather.first.icon),
            width: _size.width * 0.07,
          ),
          padding32,
          Text(
            '${dailyWeather.temp.max}°',
            style:  getMediumStyle(fontSize: 14.spMin,color: MyColors.titleColor),
            ),
          padding24,
          Text(
            '${dailyWeather.temp.min}°',
            style: getMediumStyle(fontSize: 13.spMin,color: MyColors.bodyColor),
          ),
        ],
      ),
    );
  }
}

class DaySummaryWidget2 extends StatelessWidget {
  const DaySummaryWidget2({
    Key? key,
    required this.dailyWeather,
  }) : super(key: key);

  final Daily dailyWeather;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: MyColors.themeColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              getDayFromEpoch(dailyWeather.dt),
              style: getMediumStyle(fontSize: 14.spMin,color: MyColors.titleColor),
            ),
          ),
          Image.asset(
            ImageAssets.getSmallAsset(dailyWeather.weather.first.icon),
            width: _size.width * 0.07,
          ),
          padding8,
          Text(
            '${dailyWeather.temp.max}°',
            style:  getMediumStyle(fontSize: 14.spMin,color: MyColors.titleColor),
          ),
          padding4,
          Text(
            '${dailyWeather.temp.min}°',
            style: getMediumStyle(fontSize: 13.spMin,color: MyColors.bodyColor),
          ),
        ],
      ),
    );
  }
}
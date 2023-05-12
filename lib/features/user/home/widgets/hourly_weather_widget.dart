import 'package:flutter/material.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/commons/common_widgets/padding.dart';
import 'package:the_solar_spark/utils/constants/image_const.dart';
import 'package:the_solar_spark/utils/thems/styles_manager.dart';
import 'package:the_solar_spark/utils/utils.dart';

import '../models/current_model.dart';

class HourlyWeatherWidget extends StatelessWidget {
  const HourlyWeatherWidget({
    Key? key,
    required this.hourWeather,
  }) : super(key: key);

  final List<Current> hourWeather;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    //Extract 24 hours from 48 hours
    final List<Current> hourWeather2=hourWeather.sublist(0,25);

    return SizedBox(
      height: _size.height * 0.16,
      child: ListView.builder(
          itemCount: hourWeather2.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const SizedBox();
            }
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  Text(
                    getTimeInHour(hourWeather2[index].dt),
                    style:  getMediumStyle(fontSize: 10.spMin,color: MyColors.bodyColor),
                  ),
                  padding12,
                  Image.asset(
                    ImageAssets.getSmallAsset(
                        hourWeather2[index].weather.first.icon),
                    height: _size.height * 0.03,
                  ),
                  padding8,
                  Text(
                    hourWeather2[index].weather.first.description,
                    style: getRegularStyle(fontSize: 8.spMin,color: MyColors.bodyColor),
                  ),
                  padding12,
                  Text(
                    '${hourWeather2[index].temp}°',
                    style: getSemiBoldStyle(fontSize: 12.spMin,color: MyColors.titleColor),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

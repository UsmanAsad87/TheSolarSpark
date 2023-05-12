
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            top: -_size.width * 0.23,
            right: -_size.width * 0.35,
            child: Image.asset(
              ImageAssets.getAsset(weather.current.weather.first.icon),
              height: _size.height * 0.45,
            ),
          ),
          Container(
            width: _size.width * 0.55,
            padding: EdgeInsets.symmetric(
                horizontal: _size.width * 0.08, vertical: _size.height * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                    style: theme.textTheme.headline6?.copyWith(
                      fontSize: 64,
                      color: theme.colorScheme.tertiary,
                    )),
                padding16,
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
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        title,
        style: theme.textTheme.subtitle1
            ?.copyWith(color: theme.colorScheme.onTertiaryContainer),
        textAlign: TextAlign.center,
      ),
    );
  }
}
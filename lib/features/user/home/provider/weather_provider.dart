import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:the_solar_spark/features/user/home/resources/home_repository.dart';
import 'package:the_solar_spark/utils/utils.dart';
import '../models/weather_one_call_model.dart';

final weatherProvider = FutureProvider.autoDispose<WeatherData>((ref) async {
  Position position = await determinePosition();
  Response response =
  await HomeRepository().getHomeData(lat: position.latitude , long: position.longitude);



  // my home location[Usman's]
  // double lat = 33.602335;
  // double long =73.110448;
  // Response response =
  // await HomeRepository().getHomeData(lat: lat, long: long);


  if (response.statusCode == 200) {
    final weatherData = WeatherData.fromJson(response.data);
    return weatherData;
  } else {
    throw response.data['message'];
  }
});



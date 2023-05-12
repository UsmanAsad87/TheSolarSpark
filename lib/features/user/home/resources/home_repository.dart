import 'package:geocoding/geocoding.dart';
import 'package:the_solar_spark/core/network/api_base_helper.dart';
import 'package:the_solar_spark/utils/constants/app_constants.dart';
import 'package:the_solar_spark/utils/secrets.dart';


class HomeRepository {
  final _apiBaseHelper = ApiBaseHelper();

  Future<dynamic> getHomeData({
    required double lat,
    required double long,
    String unit = 'metric',
    String exclude = "",
  }) async {
    final query =
        "lon=$long&lat=$lat&appid=$apiKey&units=$unit&exclude=$exclude";
    final path = "$baseUrl/onecall?$query";

    final response = await _apiBaseHelper.get(path);

    return response;
  }

  Future<dynamic> getLocationNameGeolocater(
      {required double lat, required double long}) async {

    List<Placemark> placemarks =
    await placemarkFromCoordinates(lat,long);
    Placemark place = placemarks[0];
    String address =
        ' ${place.locality}';
    print(address);
    return address;
  }
}

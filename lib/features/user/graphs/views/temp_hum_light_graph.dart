import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_solar_spark/commons/common_widgets/padding.dart';
import '../../../../commons/common_libs.dart';



class TemperatureHumidityLightGraph extends StatefulWidget {
  const TemperatureHumidityLightGraph({Key? key}) : super(key: key);

  @override
  State<TemperatureHumidityLightGraph> createState() => _TemperatureHumidityLightGraphState();
}

class _TemperatureHumidityLightGraphState extends State<TemperatureHumidityLightGraph> {
  List<TemperatureHumidityLightIntensityData> data = [
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 1), 25, 60, 100),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 2), 26, 62, 120),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 3), 27, 64, 110),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 4), 26, 61, 130),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 5), 25, 58, 110),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 6), 23, 56, 90),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 7), 25, 60, 100),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 8), 26, 62, 120),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 9), 27, 64, 110),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 10), 26, 61, 130),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 11), 25, 58, 110),
    TemperatureHumidityLightIntensityData(DateTime(2022, 5, 12), 23, 56, 90),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
           Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: MyColors.titleColor,
            size: 15.h,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Temperatue/ Humidity/ Light Intensity vs Time',style: getSemiBoldStyle(fontSize: 16.spMin,color: MyColors.themeDarkColor),),
              padding32,
              SfCartesianChart(
                primaryXAxis: DateTimeAxis(),
                series: <ChartSeries>[
                  LineSeries<TemperatureHumidityLightIntensityData, DateTime>(
                    dataSource: data,
                    xValueMapper: (TemperatureHumidityLightIntensityData d, _) => d.time,
                    yValueMapper: (TemperatureHumidityLightIntensityData d, _) => d.temperature,
                    name: 'Temperature',
                  ),
                  LineSeries<TemperatureHumidityLightIntensityData, DateTime>(
                    dataSource: data,
                    xValueMapper: (TemperatureHumidityLightIntensityData d, _) => d.time,
                    yValueMapper: (TemperatureHumidityLightIntensityData d, _) => d.humidity,
                    name: 'Humidity',
                  ),
                  LineSeries<TemperatureHumidityLightIntensityData, DateTime>(
                    dataSource: data,
                    xValueMapper: (TemperatureHumidityLightIntensityData d, _) => d.time,
                    yValueMapper: (TemperatureHumidityLightIntensityData d, _) => d.lightIntensity,
                    name: 'Light Intensity',
                  ),
                ],
                legend: Legend(isVisible: true,position: LegendPosition.bottom),
              ),
              ],
          ),
        ),
      ),
    );
  }
}


class TemperatureHumidityLightIntensityData {
  final DateTime time;
  final double temperature;
  final double humidity;
  final double lightIntensity;

  TemperatureHumidityLightIntensityData(this.time, this.temperature, this.humidity, this.lightIntensity);
}

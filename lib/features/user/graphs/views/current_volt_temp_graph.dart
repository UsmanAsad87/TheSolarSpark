import 'dart:math';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_solar_spark/commons/common_widgets/padding.dart';
import '../../../../commons/common_libs.dart';



class CurrentVoltVsTempGraph extends StatefulWidget {
  const CurrentVoltVsTempGraph({Key? key}) : super(key: key);

  @override
  State<CurrentVoltVsTempGraph> createState() => _CurrentVoltVsTempGraphState();
}

class _CurrentVoltVsTempGraphState extends State<CurrentVoltVsTempGraph> {
  List<CurrentVoltageTemperatureData> data = [
    CurrentVoltageTemperatureData(25, 1.2, 23),
    CurrentVoltageTemperatureData(26, 1.3, 22),
    CurrentVoltageTemperatureData(27, 1.4, 25),
    CurrentVoltageTemperatureData(26, 1.5, 26),
    CurrentVoltageTemperatureData(25, 1.6, 24),
    CurrentVoltageTemperatureData(23, 1.7, 21),
  ];
  @override
  Widget build(BuildContext context) {
    List<CurrentVoltageTemperatureData> dataOut = generateRandomData(6);
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
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Input Graph',style: getSemiBoldStyle(fontSize: 18.spMin,color: MyColors.titleColor),),
              padding8,
              Align(alignment:Alignment.center,child: Text('Current,Voltage vs Temperature',style: getSemiBoldStyle(fontSize: 16.spMin,color: MyColors.themeColor),textAlign: TextAlign.center,)),
              padding16,
              SfCartesianChart(
                primaryXAxis: NumericAxis(),
                series: <ChartSeries>[
                  LineSeries<CurrentVoltageTemperatureData, double>(
                    dataSource: data,
                    xValueMapper: (CurrentVoltageTemperatureData d, _) => d.temperature,
                    yValueMapper: (CurrentVoltageTemperatureData d, _) => d.current,
                    name: 'Current',
                  ),
                  LineSeries<CurrentVoltageTemperatureData, double>(
                    dataSource: data,
                    xValueMapper: (CurrentVoltageTemperatureData d, _) => d.temperature,
                    yValueMapper: (CurrentVoltageTemperatureData d, _) => d.voltage,
                    name: 'Voltage',
                  ),
                ],
                legend: Legend(isVisible: true,position: LegendPosition.bottom),
              ),
               padding40,
              Text('Output Graph',style: getSemiBoldStyle(fontSize: 18.spMin,color: MyColors.titleColor),),
              padding8,
              Align(alignment:Alignment.center,child: Text('Current,Voltage vs Temperature',style: getSemiBoldStyle(fontSize: 16.spMin,color: MyColors.themeColor),textAlign: TextAlign.center,)),
              padding16,
              SfCartesianChart(
                primaryXAxis: NumericAxis(),
                series: <ChartSeries>[
                  LineSeries<CurrentVoltageTemperatureData, double>(
                    dataSource: dataOut,
                    xValueMapper: (CurrentVoltageTemperatureData d, _) => d.temperature,
                    yValueMapper: (CurrentVoltageTemperatureData d, _) => d.current,
                    name: 'Current',
                  ),
                  LineSeries<CurrentVoltageTemperatureData, double>(
                    dataSource: dataOut,
                    xValueMapper: (CurrentVoltageTemperatureData d, _) => d.temperature,
                    yValueMapper: (CurrentVoltageTemperatureData d, _) => d.voltage,
                    name: 'Voltage',
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

class CurrentVoltageTemperatureData {
  final double temperature;
  final double current;
  final double voltage;

  CurrentVoltageTemperatureData(this.temperature, this.current, this.voltage);
}

List<CurrentVoltageTemperatureData> generateRandomData(int count) {
  final random = Random();
  final List<CurrentVoltageTemperatureData> data = [];
  for (int i = 0; i < count; i++) {
    final temperature = 20 + random.nextInt(11); // random temperature between 20 and 30
    final current = 0.5 + random.nextDouble(); // random current between 0.5 and 1.5
    final voltage = 20 + random.nextInt(11); // random voltage between 20 and 30
    data.add(CurrentVoltageTemperatureData(temperature.toDouble(), current, voltage.toDouble()));
  }
  return data;
}
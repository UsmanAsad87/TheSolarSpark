import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_solar_spark/commons/common_widgets/padding.dart';
import '../../../../commons/common_libs.dart';



class PowerVsTimeGraph extends StatefulWidget {
  const PowerVsTimeGraph({Key? key}) : super(key: key);

  @override
  State<PowerVsTimeGraph> createState() => _PowerVsTimeGraphState();
}

class _PowerVsTimeGraphState extends State<PowerVsTimeGraph> {
  List<PowerData> data = [
    PowerData(DateTime(2023, 5, 12, 0, 0, 0), 10.5),
    PowerData(DateTime(2023, 5, 12, 1, 0, 0), 9.8),
    PowerData(DateTime(2023, 5, 12, 2, 0, 0), 11.2),
    PowerData(DateTime(2023, 5, 12, 3, 0, 0), 12.6),
    PowerData(DateTime(2023, 5, 12, 4, 0, 0), 13.5),
    PowerData(DateTime(2023, 5, 12, 5, 0, 0), 11.8),
    PowerData(DateTime(2023, 5, 12, 6, 0, 0), 9.6),
    PowerData(DateTime(2023, 5, 12, 7, 0, 0), 8.7),
    PowerData(DateTime(2023, 5, 12, 8, 0, 0), 10.2),
    PowerData(DateTime(2023, 5, 12, 9, 0, 0), 11.5),
  ];
  List<PowerData> dataOut = [
    PowerData(DateTime(2023, 5, 12, 0, 0, 0), 9.5),
    PowerData(DateTime(2023, 5, 12, 1, 0, 0), 8.8),
    PowerData(DateTime(2023, 5, 12, 2, 0, 0), 10.2),
    PowerData(DateTime(2023, 5, 12, 3, 0, 0), 10.6),
    PowerData(DateTime(2023, 5, 12, 4, 0, 0), 11.5),
    PowerData(DateTime(2023, 5, 12, 5, 0, 0), 8.8),
    PowerData(DateTime(2023, 5, 12, 6, 0, 0), 9.0),
    PowerData(DateTime(2023, 5, 12, 7, 0, 0), 7.7),
    PowerData(DateTime(2023, 5, 12, 8, 0, 0), 7.2),
    PowerData(DateTime(2023, 5, 12, 9, 0, 0), 9.5),
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
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Input Graph',style: getSemiBoldStyle(fontSize: 18.spMin,color: MyColors.titleColor),),
              padding8,
              Align(alignment:Alignment.center,child: Text('Power Vs Time',style: getSemiBoldStyle(fontSize: 16.spMin,color: MyColors.themeColor),textAlign: TextAlign.center,)),
              padding16,
              SfCartesianChart(
                primaryXAxis: DateTimeAxis(
                  // title: AxisTitle(text: 'Time'),
                  dateFormat: DateFormat.Hm(),
                ),
                series: <LineSeries<PowerData, DateTime>>[
                  LineSeries<PowerData, DateTime>(
                    dataSource: data,
                    xValueMapper: (PowerData data, _) => data.time,
                    yValueMapper: (PowerData data, _) => data.power,
                    name: 'Power',
                  ),
                ],
                legend: Legend(isVisible: true,position: LegendPosition.bottom),
              ),
              padding40,
              Text('Output Graph',style: getSemiBoldStyle(fontSize: 18.spMin,color: MyColors.titleColor),),
              padding8,
              Align(alignment:Alignment.center,child: Text('Power Vs Time',style: getSemiBoldStyle(fontSize: 16.spMin,color: MyColors.themeColor),textAlign: TextAlign.center,)),
              padding16,
              SfCartesianChart(
                primaryXAxis: DateTimeAxis(
                  dateFormat: DateFormat.Hm(),
                ),
                series: <LineSeries<PowerData, DateTime>>[
                  LineSeries<PowerData, DateTime>(
                    dataSource: dataOut,
                    xValueMapper: (PowerData data, _) => data.time,
                    yValueMapper: (PowerData data, _) => data.power,
                    name: 'Power',
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

class PowerData {
  final DateTime time;
  final double power;

  PowerData(this.time, this.power);
}
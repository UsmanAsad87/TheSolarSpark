import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_solar_spark/commons/common_widgets/padding.dart';
import '../../../../commons/common_libs.dart';



class EfficiencyVSTimeGraph extends StatefulWidget {
  const EfficiencyVSTimeGraph({Key? key}) : super(key: key);

  @override
  State<EfficiencyVSTimeGraph> createState() => _EfficiencyVSTimeGraphState();
}

class _EfficiencyVSTimeGraphState extends State<EfficiencyVSTimeGraph> {
  final List<EfficiencyData> data = [
    EfficiencyData(DateTime(2023, 5, 12, 0, 0, 0), 0.75),
    EfficiencyData(DateTime(2023, 5, 12, 1, 0, 0), 0.82),
    EfficiencyData(DateTime(2023, 5, 12, 2, 0, 0), 0.68),
    EfficiencyData(DateTime(2023, 5, 12, 3, 0, 0), 0.91),
    EfficiencyData(DateTime(2023, 5, 12, 4, 0, 0), 0.79),
    EfficiencyData(DateTime(2023, 5, 12, 5, 0, 0), 0.87),
    EfficiencyData(DateTime(2023, 5, 12, 6, 0, 0), 0.71),
    EfficiencyData(DateTime(2023, 5, 12, 7, 0, 0), 0.63),
    EfficiencyData(DateTime(2023, 5, 12, 8, 0, 0), 0.89),
    EfficiencyData(DateTime(2023, 5, 12, 9, 0, 0), 0.76),
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
              Text('Efficiency vs Time Graph',style: getSemiBoldStyle(fontSize: 16.spMin,color: MyColors.themeDarkColor),),
              padding32,
              SfCartesianChart(
                primaryXAxis: DateTimeAxis(
                  // title: AxisTitle(text: 'Time'),
                  dateFormat: DateFormat.Hm(),
                ),
                series: <LineSeries<EfficiencyData, DateTime>>[
                  LineSeries<EfficiencyData, DateTime>(
                    dataSource: data,
                    xValueMapper: (EfficiencyData data, _) => data.time,
                    yValueMapper: (EfficiencyData data, _) => data.efficiency,
                    name: 'Efficiency'
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

class EfficiencyData {
  final DateTime time;
  final double efficiency;

  EfficiencyData(this.time, this.efficiency);
}
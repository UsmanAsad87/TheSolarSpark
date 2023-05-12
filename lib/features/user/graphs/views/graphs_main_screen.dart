import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_widgets/custom_button.dart';
import 'package:the_solar_spark/features/auth/controller/auth_controller.dart';
import 'package:the_solar_spark/features/user/profile/widgets/security_widget.dart';
import 'package:the_solar_spark/features/user/profile/widgets/user_data_widget.dart';
import 'package:the_solar_spark/routes/route_manager.dart';

import '../../../../commons/common_libs.dart';
import '../../main_menu/controller/main_menu_controller.dart';

class GraphMainScreen extends StatelessWidget {
  const GraphMainScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        title: Text(
          'Graphs',
          style: getSemiBoldStyle(fontSize: 16.spMin),
        ),
        centerTitle: true,
        leading: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final mainProvider = ref.watch(mainMenuProvider);
            return IconButton(
              onPressed: () {
                mainProvider.setIndex(0);
              },
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: MyColors.titleColor,
                size: 15.h,
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomButton(onPressed: (){
                Navigator.pushNamed(context, AppRoutes.temperatureHumidityLightGraph);
              }, buttonText: 'Temperature/ Humidity/ Light intensity'),
              CustomButton(onPressed: (){
                Navigator.pushNamed(context, AppRoutes.currentVoltVsTempGraph);
              }, buttonText: 'Current and Voltage Vs Temp',backColor: MyColors.themeDarkColor.withOpacity(0.7),),
              CustomButton(onPressed: (){
                Navigator.pushNamed(context, AppRoutes.powerVsTimeGraph);
              }, buttonText: 'Power'),
              CustomButton(onPressed: (){
                Navigator.pushNamed(context, AppRoutes.efficiencyVSTimeGraph);
              }, buttonText: 'Efficiency',backColor: MyColors.themeDarkColor.withOpacity(0.7),),
            ],
          ),
        ),
      ),
    );
  }
}

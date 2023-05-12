
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/routes/route_manager.dart';

class SecurityWidget extends StatelessWidget {
  const SecurityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Security',style: getSemiBoldStyle(fontSize: 14.spMin),),
        SizedBox(height: 10.h,),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.userResetPassScreen);
          },
          child: Container(
            color: MyColors.white,
            padding: EdgeInsets.all(10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.lock_outline,size: 20.h,color: MyColors.bodyColor,),
                    SizedBox(width: 10.w,),
                    Text('Password',style: getMediumStyle(fontSize: 12.spMin),),
                  ],
                ),
                Icon(Icons.arrow_forward_ios,size: 15.h,color: MyColors.bodyColor,),

              ],
            ),
          ),
        ),
      ],
    );
  }
}

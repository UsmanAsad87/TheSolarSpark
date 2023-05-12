import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_libs.dart';
import 'package:the_solar_spark/features/auth/controller/auth_controller.dart';
import 'package:the_solar_spark/features/user/profile/controller/profile_controller.dart';
import 'package:the_solar_spark/utils/loading.dart';

class UserDataWidget extends ConsumerWidget {
  const UserDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(currentUserAuthProvider).when(
        data: (currentUser) {
          return ref.watch(currentUserInfoProvider(FirebaseAuth.instance.currentUser!.uid)).when(
              data: (userInfo) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Settings',
                      style: getSemiBoldStyle(fontSize: 14.spMin),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: getMediumStyle(fontSize: 12.spMin),
                          ),
                          Text(
                           userInfo.email,
                            style: getRegularStyle(fontSize: 12.spMin),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Full name',
                            style: getMediumStyle(fontSize: 12.spMin),
                          ),
                          Text(
                           userInfo.displayName,
                            style: getRegularStyle(fontSize: 12.spMin),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              error: (error, st) => ErrorWidget(error),
              loading: () => SizedBox(height:100.h,child: const LoadingWidget()));
        },
        error: (error, st) => ErrorWidget(error),
        loading: () => const LoadingWidget());
  }
}

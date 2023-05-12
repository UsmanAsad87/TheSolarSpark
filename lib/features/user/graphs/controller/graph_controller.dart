import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/features/auth/data/auth_apis/auth_apis.dart';
import 'package:the_solar_spark/features/auth/data/auth_apis/database_apis.dart';
import 'package:the_solar_spark/models/user_model.dart';

final profileControllerProvider =
    StateNotifierProvider<ProfileController, bool>((ref) {
  final databaseApi = ref.watch(databaseApisProvider);
  final authApis = ref.watch(authApisProvider);
  return ProfileController(databaseApis: databaseApi, authApis: authApis);
});

final currentUserInfoProvider = FutureProvider.family((ref, String uid) {
  final profileController = ref.watch(profileControllerProvider.notifier);
  return profileController.getCurrentUserInfo(uid: uid);
});

// final currentUserInformationProvider = StreamProvider.family((ref, String uid) {
//   final profileController = ref.watch(profileControllerProvider.notifier);
//   return profileController.getCurrentUserInformation(uid: uid);
// });

class ProfileController extends StateNotifier<bool> {
  final DatabaseApis _databaseApis;
  final AuthApis _authApis;
  ProfileController(
      {required DatabaseApis databaseApis, required AuthApis authApis})
      : _databaseApis = databaseApis,
        _authApis = authApis,
        super(false);

  // User Functions
  Future<UserModel> getCurrentUserInfo({required String uid}) async {
    final result = await _databaseApis.getCurrentUserInfo(uid: uid);
    UserModel userModel =
        UserModel.fromMap(result.data() as Map<String, dynamic>);
    return userModel;
  }

  // Stream<UserModel> getCurrentUserInformation({required String uid}) {
  //   return _databaseApis.getCurrentUserInforomation(uid: uid);
  //
  // }
}

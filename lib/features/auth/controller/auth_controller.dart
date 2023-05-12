import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_solar_spark/commons/common_widgets/show_toast.dart';
import 'package:the_solar_spark/features/auth/data/auth_apis/auth_apis.dart';
import 'package:the_solar_spark/features/auth/data/auth_apis/database_apis.dart';
import 'package:the_solar_spark/routes/route_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../models/user_model.dart';

final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  return AuthController(
    authApis: ref.watch(authApisProvider),
    databaseApis: ref.watch(databaseApisProvider),
  );
});

final userStateStreamProvider = StreamProvider((ref) {
  final authProvider = ref.watch(authControllerProvider.notifier);
  return authProvider.getSigninStatusOfUser();
});

final currentUserAuthProvider = FutureProvider((ref) {
  final authCtr = ref.watch(authControllerProvider.notifier);
  return authCtr.currentUser();
});

// final currUserAuthProvider = Provider((ref) {
//   final authCtr = ref.watch(authControllerProvider.notifier);
//   return authCtr.currUser();
// });

class AuthController extends StateNotifier<bool> {
  final AuthApis _authApis;
  final DatabaseApis _databaseApis;
  AuthController(
      {required AuthApis authApis, required DatabaseApis databaseApis})
      : _authApis = authApis,
        _databaseApis = databaseApis,
        super(false);

  Future<User?> currentUser() async {
    return _authApis.getCurrentUser();
  }
  // User? currUser()  {
  //   return _authApis.getCurrUser();
  // }

  // Register User
  Future<void> registerWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final result = await _authApis.registerWithEmailPassword(
        email: email, password: password);

    result.fold((l) {
      state = false;
      showSnackBar(context, l.message);
    }, (r) async {
      UserModel userModel = UserModel(
        displayName: name,
        email: r.email ?? 'user@user.com',
        uid: r.uid,
        createdAt: DateTime.now(),
      );

      final result2 = await _databaseApis.saveUserInfo(userModel: userModel);
      await _databaseApis.getCurrentUserInfo(uid: r.uid);
      result2.fold((l) {
        state = false;
        showToast(msg: l.message);
      }, (r) async {
        state = false;
        // Navigator.pushNamed(context, AppRoutes.userLoginScreen);
        // showToast(msg: 'Registered Successfully');
      });
    });
  }

  // Login User
  Future<void> signInUserWithEmailAndPassword({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final result = await _authApis.signInWithEmailAndPass(
        email: email, password: password);

    result.fold((l) {
      state = false;
      showSnackBar(context, l.message);
    }, (r) async {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.userMainMenuScreen,(route) => false);

    });
  }

  Future<void> changeUserPassword({
    required String currentPass,
    required String newPass,
    required BuildContext context,
  }) async {
    state = true;
    final result = await _authApis.changePassword(
        currentPassword: currentPass, newPassword: newPass);
    state = false;
    result.fold((l) {
      showSnackBar(context, l.message);
    }, (r) {
      showSnackBar(context, 'Password Reset Successfully!');
    });
  }

  // Forgot Password
  Future<void> forgotPassword({
    required String email,
    required BuildContext context,
  }) async {
    state = true;
    final result = await _authApis.forgotPassword(email: email);
    state = false;
    result.fold((l) {
      showSnackBar(context, l.message);
    }, (r) {
      showSnackBar(context, 'Reset Email sent!');
    });
  }

  // LogOut User
  Future<void> logout({
    required BuildContext context,
  }) async {
    state = true;
    final result = await _authApis.logout();
    state = false;
    result.fold((l) {
      showSnackBar(context, l.message);
    }, (r) {
      showSnackBar(context, 'Logout Successful');
      Navigator.pushNamedAndRemoveUntil(
          context, AppRoutes.userLoginScreen, (route) => false);
    });
  }

  // getSigninStatusOfUser
  Stream<User?> getSigninStatusOfUser() {
    return _authApis.getSigninStatusOfUser();
  }

  // Update User Information
  Future<void> updateCurrentUserInfo({
    required BuildContext context,
    required String name,
    required String email,
    required String uid,
  }) async {
    final result =
        await _authApis.updateCurrentUserInfo(name: name, email: email);

    result.fold((l) {
      showSnackBar(context, l.message);
    }, (r) async {
      final result2 = await _databaseApis.updateCurrentUserInfo(userModel: {
        'email': email,
        'displayName': name,
      }, uid: uid);
      result2.fold((l) {
        showSnackBar(context, l.message);
      }, (r) {
        showSnackBar(context, 'Profile Updated Successfully');
        Navigator.pushNamedAndRemoveUntil(
            context, AppRoutes.userMainMenuScreen, (route) => false);
      });
    });
  }
}

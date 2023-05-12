import 'package:the_solar_spark/apis/apis_commons.dart';

final authApisProvider = Provider<AuthApis>((ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return AuthApis(auth: auth);
});

abstract class IAuthApis {
  FutureEither<User> signInWithEmailAndPass(
      {required String email, required String password});
  FutureEither<User> registerWithEmailPassword(
      {required String email, required String password});
  FutureEitherVoid forgotPassword({required String email});
  FutureEitherVoid logout();
  Future<User?> getCurrentUser();
  Stream<User?> getSigninStatusOfUser();
  FutureEitherVoid updateCurrentUserInfo({
    required String name,
    required String email,
  });
  FutureEitherVoid changePassword(
      {required String currentPassword, required String newPassword});
}

class AuthApis implements IAuthApis {
  final FirebaseAuth _auth;
  AuthApis({required FirebaseAuth auth}) : _auth = auth;

  @override
  FutureEitherVoid logout() async {
    try {
      final response = await _auth.signOut();
      return Right(response);
    } on FirebaseAuthException catch (e, stackTrace) {
      return Left(Failure(e.message ?? 'Firebase Error Occurred', stackTrace));
    } catch (e, stackTrace) {
      return Left(Failure(e.toString(), stackTrace));
    }
  }

  @override
  FutureEither<User> registerWithEmailPassword(
      {required String email, required String password}) async {
    try {
      final response = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(response.user!);
    } on FirebaseAuthException catch (e, stackTrace) {
      return Left(Failure(e.message ?? 'Firebase Error Occurred', stackTrace));
    } catch (e, stackTrace) {
      return Left(Failure(e.toString(), stackTrace));
    }
  }

  @override
  FutureEither<User> signInWithEmailAndPass(
      {required String email, required String password}) async {
    try {
      final response = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(response.user!);
    } on FirebaseAuthException catch (e, stackTrace) {
      return Left(Failure(e.message ?? 'Firebase Error Occurred', stackTrace));
    } catch (e, stackTrace) {
      return Left(Failure(e.toString(), stackTrace));
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    return _auth.currentUser;
  }
  User? getCurrUser()  {
    return _auth.currentUser;
  }

  @override
  FutureEitherVoid forgotPassword({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return const Right(null);
    } on FirebaseAuthException catch (e, stackTrace) {
      return Left(Failure(e.message ?? 'Firebase Error Occurred', stackTrace));
    } catch (e, stackTrace) {
      return Left(Failure(e.toString(), stackTrace));
    }
  }

  @override
  FutureEitherVoid updateCurrentUserInfo({
    required String name,
    required String email,
  }) async {
    try {
      await _auth.currentUser!.updateDisplayName(name);
      await _auth.currentUser!.updateEmail(email);
      return const Right(null);
    } on FirebaseAuthException catch (e, stackTrace) {
      return Left(Failure(e.message ?? 'Firebase Error Occurred', stackTrace));
    } catch (e, stackTrace) {
      return Left(Failure(e.toString(), stackTrace));
    }
  }

  @override
  FutureEitherVoid changePassword(
      {required String currentPassword, required String newPassword}) async {
    try {
      var user = _auth.currentUser!;
      var credentials = EmailAuthProvider.credential(
          email: _auth.currentUser!.email!, password: currentPassword);
      await user.reauthenticateWithCredential(credentials);
      await _auth.currentUser!.updatePassword(newPassword);
      return const Right(null);
    } on FirebaseAuthException catch (e, stackTrace) {
      return Left(Failure(e.message ?? 'Firebase Error Occurred', stackTrace));
    } catch (e, stackTrace) {
      return Left(Failure(e.toString(), stackTrace));
    }
  }

  @override
  Stream<User?> getSigninStatusOfUser() {
    return _auth.authStateChanges();
  }
}

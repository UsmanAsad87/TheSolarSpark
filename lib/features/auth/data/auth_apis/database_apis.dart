import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:the_solar_spark/apis/apis_commons.dart';
import 'package:the_solar_spark/models/user_model.dart';


final databaseApisProvider = Provider<DatabaseApis>((ref) {
  final fireStore = ref.watch(firebaseDatabaseProvider);
  return DatabaseApis(firestore: fireStore);
});

abstract class IDatabaseApis {
  // User Functions
  FutureEitherVoid saveUserInfo({required UserModel userModel});
  FutureEitherVoid updateCurrentUserInfo(
      {required Map<String, dynamic> userModel, required String uid});
  Future<DocumentSnapshot> getCurrentUserInfo({required String uid});
}

class DatabaseApis extends IDatabaseApis {
  final FirebaseFirestore _firestore;
  DatabaseApis({required FirebaseFirestore firestore}) : _firestore = firestore;

  @override
  FutureEitherVoid saveUserInfo({required UserModel userModel}) async {
    try {
      await _firestore
          .collection(FirebaseConstants.userCollection)
          .doc(userModel.uid)
          .set(userModel.toMap());
      return const Right(null);
    } on FirebaseException catch (e, stackTrace) {
      return Left(Failure(e.message ?? 'Firebase Error Occurred', stackTrace));
    } catch (e, stackTrace) {
      return Left(Failure(e.toString(), stackTrace));
    }
  }

  @override
  FutureEitherVoid updateCurrentUserInfo(
      {required Map<String, dynamic> userModel, required String uid}) async {
    try {
      await _firestore
          .collection(FirebaseConstants.userCollection)
          .doc(uid)
          .update(userModel);
      return const Right(null);
    } on FirebaseException catch (e, stackTrace) {
      return Left(Failure(e.message ?? 'Firebase Error Occurred', stackTrace));
    } catch (e, stackTrace) {
      return Left(Failure(e.toString(), stackTrace));
    }
  }

  @override
  Future<DocumentSnapshot> getCurrentUserInfo({required String uid}) async {
    print(uid);

    final DocumentSnapshot document = await _firestore
        .collection(FirebaseConstants.userCollection)
        .doc(uid)
        .get();
    return document;
  }


  //
  // @override
  // Stream<UserModel> getCurrentUserInforomation({required String uid}) {
  //   return _firestore.collection(FirebaseConstants.userCollection).doc(uid).snapshots().map((event) {
  //     UserModel userModel=UserModel.fromMap(event.data()!);
  //     return userModel;
  //   });
  // }
}

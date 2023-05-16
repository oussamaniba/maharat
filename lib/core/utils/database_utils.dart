import 'dart:async';

import 'package:localstore/localstore.dart';

class AppDatabase {
  AppDatabase._();
  static final AppDatabase _appDatabase = AppDatabase._();
  static AppDatabase get instance => _appDatabase;
  static final Localstore _db = Localstore.instance;

  static const String _app_name = "Mobility";
  static const String _jwtDocName = "JwtDoc";

  static final CollectionRef _ref = _db.collection(_app_name);

  Future<String?> getJwt() async {
    var jwt = await _ref.doc(_jwtDocName).get();
    return jwt == null ? null : jwt['jwt'];
  }

  Future saveJwt(String jwt) async {
    await _ref.doc(_jwtDocName).set({
      'jwt': jwt,
    });
  }

  Future<bool> removeJwt() async {
    await _ref.doc(_jwtDocName).delete();
    return true;
  }
}

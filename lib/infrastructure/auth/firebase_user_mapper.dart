import 'package:firebase_auth/firebase_auth.dart' as firebase;
import '../../core/unique_id.dart';
import '../../domain/auth/user.dart';

extension FirebaseUserMapper on firebase.User {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}

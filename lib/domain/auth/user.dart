import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/unique_id.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
  }) = _User;
}

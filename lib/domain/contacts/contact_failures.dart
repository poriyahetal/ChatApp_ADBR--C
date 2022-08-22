import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_failures.freezed.dart';

@freezed
class ContactFailure with _$ContactFailure {
  const factory ContactFailure.fetchContactFailure() = FetchContactFailure;
  const factory ContactFailure.permisssionDenied() = PermisssionDenied;

  const factory ContactFailure.inviteContactFailure(String contactName) =
      InviteContactFailure;
}

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_template/domain/core/enums.dart';

class LastActiveStatus {
  ActiveStatus activeStatus;
  Privacy lastSeen;
  int lastActiveMillisecondsSinceEpoch;

  LastActiveStatus({
    required this.activeStatus,
    required this.lastSeen,
    required this.lastActiveMillisecondsSinceEpoch,
  });

  factory LastActiveStatus.empty() => LastActiveStatus(
        activeStatus: ActiveStatus.Online,
        lastSeen: Privacy.Everyone,
        lastActiveMillisecondsSinceEpoch: Timestamp.now().millisecondsSinceEpoch,
      );

  factory LastActiveStatus.demo() => LastActiveStatus(
        activeStatus: ActiveStatus.Online,
        lastSeen: Privacy.Everyone,
        lastActiveMillisecondsSinceEpoch: Timestamp.now().millisecondsSinceEpoch,
      );

  LastActiveStatus copyWith({
    ActiveStatus? activeStatus,
    Privacy? lastSeen,
    int? lastActiveMillisecondsSinceEpoch,
  }) {
    return LastActiveStatus(
      activeStatus: activeStatus ?? this.activeStatus,
      lastSeen: lastSeen ?? this.lastSeen,
      lastActiveMillisecondsSinceEpoch: lastActiveMillisecondsSinceEpoch ?? this.lastActiveMillisecondsSinceEpoch,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'activeStatus': activeStatus.toString(),
      'lastSeen': lastSeen.toString(),
      'lastActiveMillisecondsSinceEpoch': lastActiveMillisecondsSinceEpoch,
    };
  }

  factory LastActiveStatus.fromMap(Map<String, dynamic> map) {
    return LastActiveStatus(
      activeStatus: map['activeStatus'] == "ActiveStatus.Online"
          ? ActiveStatus.Online
          : map['activeStatus'] == "ActiveStatus.Offline"
              ? ActiveStatus.Offline
              : ActiveStatus.Typing,
      lastSeen: map['lastSeen'] == "Privacy.Everyone"
          ? Privacy.Everyone
          : map['lastSeen'] == "Privacy.Only_my_contact"
              ? Privacy.Only_my_contact
              : Privacy.No_one,
      lastActiveMillisecondsSinceEpoch: map['lastActiveMillisecondsSinceEpoch'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory LastActiveStatus.fromJson(String source) =>
      LastActiveStatus.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Active status( ActiveStatus: $activeStatus, lastSeen: $lastSeen,lastActive: $lastActiveMillisecondsSinceEpoch)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LastActiveStatus &&
        other.activeStatus == activeStatus &&
        other.lastSeen == lastSeen &&
        other.lastActiveMillisecondsSinceEpoch == lastActiveMillisecondsSinceEpoch;
  }

  @override
  int get hashCode {
    return lastSeen.hashCode ^ lastActiveMillisecondsSinceEpoch.hashCode ^ activeStatus.hashCode;
  }
}

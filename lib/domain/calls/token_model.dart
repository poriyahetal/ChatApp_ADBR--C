import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_template/domain/core/enums.dart';

class AgoraToken {
  String token;
  int tokenGeneratedTimeMillisecondsSinceEpoch;

  AgoraToken({
    required this.token,
    required this.tokenGeneratedTimeMillisecondsSinceEpoch,
  });

  factory AgoraToken.empty() => AgoraToken(
        token: '',
        tokenGeneratedTimeMillisecondsSinceEpoch:
            Timestamp.now().millisecondsSinceEpoch,
      );

  factory AgoraToken.demo() => AgoraToken(
      token: '',
      tokenGeneratedTimeMillisecondsSinceEpoch:
          Timestamp.now().millisecondsSinceEpoch);

  AgoraToken copyWith({
    String? token,
    int? lastActiveMillisecondsSinceEpoch,
  }) {
    return AgoraToken(
      token: token ?? this.token,
      tokenGeneratedTimeMillisecondsSinceEpoch:
          lastActiveMillisecondsSinceEpoch ??
              this.tokenGeneratedTimeMillisecondsSinceEpoch,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
      'lastActiveMillisecondsSinceEpoch':
          tokenGeneratedTimeMillisecondsSinceEpoch,
    };
  }

  factory AgoraToken.fromMap(Map<String, dynamic> map) {
    return AgoraToken(
      token: map['token'] as String,
      tokenGeneratedTimeMillisecondsSinceEpoch:
          map['lastActiveMillisecondsSinceEpoch'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory AgoraToken.fromJson(String source) =>
      AgoraToken.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Agora token status( token: $token,lastActive: $tokenGeneratedTimeMillisecondsSinceEpoch)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AgoraToken &&
        other.token == token &&
        other.tokenGeneratedTimeMillisecondsSinceEpoch ==
            tokenGeneratedTimeMillisecondsSinceEpoch;
  }

  @override
  int get hashCode {
    return tokenGeneratedTimeMillisecondsSinceEpoch.hashCode ^ token.hashCode;
  }
}

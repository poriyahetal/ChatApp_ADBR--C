import 'package:flutter/material.dart';

import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class CallTypeIcon extends StatelessWidget {
  CallType callType;
  CallStatus callStatus;
  bool isIncoming;
  CallTypeIcon({
    Key? key,
    required this.callType,
    required this.callStatus,
    required this.isIncoming,
  }) : super(key: key);

  IconData? _findIcon() {
    if (callType == CallType.audio) {
      if (callStatus == CallStatus.answered) {
        return isIncoming ? Icons.call_received : Icons.call_made;
      } else if (callStatus == CallStatus.notAnswered) {
        return Icons.phone_missed;
      } else if (callStatus == CallStatus.declined) {
        return Icons.call_end;
      } else if (callStatus == CallStatus.missed) {
        return Icons.call_missed;
      }
    } else {
      if (callStatus == CallStatus.answered) {
        return Icons.videocam;
      } else if (callStatus == CallStatus.notAnswered) {
        return Icons.missed_video_call_outlined;
      } else if (callStatus == CallStatus.declined) {
        return Icons.videocam_sharp;
      } else if (callStatus == CallStatus.missed) {
        return Icons.missed_video_call;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      _findIcon(),
      size: 20,
      color: Kolors.black,
    );
  }
}

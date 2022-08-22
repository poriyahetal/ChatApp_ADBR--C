import 'package:flutter/material.dart';

class NoteMessage extends StatelessWidget {
  final String message;
  const NoteMessage(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade200,
        ),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              const WidgetSpan(
                child: Icon(Icons.av_timer, size: 16),
              ),
              TextSpan(
                text: message,
                style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

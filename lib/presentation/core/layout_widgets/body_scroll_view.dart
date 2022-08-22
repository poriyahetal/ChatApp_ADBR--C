import 'package:flutter/material.dart';

class BodyScrollView extends StatelessWidget {
  const BodyScrollView({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - kToolbarHeight + 8,
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class Logo extends StatefulWidget {
  final double size;
  const Logo({Key? key, this.size = 40}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  late Image logo;
  @override
  void initState() {
    // TODO: implement initState
    logo = Image.asset('assets/images/applogo.png');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    precacheImage(logo.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      child: logo,
      // child: Text(
      //   "Logo",
      //   style: TextStyle(color: Kolors.white, fontWeight: FontWeight.bold),
      // ),
      radius: widget.size,
    );
  }
}

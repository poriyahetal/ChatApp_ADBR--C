import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final File image;
  const Test({Key? key, required this.image}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Image.file(widget.image),
     ),
    );
  }
}

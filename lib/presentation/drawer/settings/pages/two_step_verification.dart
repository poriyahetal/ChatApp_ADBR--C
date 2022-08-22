import 'package:flutter/material.dart';

class TwoStepVerificationPage extends StatefulWidget {
  const TwoStepVerificationPage({ Key? key }) : super(key: key);

  @override
  State<TwoStepVerificationPage> createState() => _TwoStepVerificationPageState();
}

class _TwoStepVerificationPageState extends State<TwoStepVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Two-step verification"),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            decoration: BoxDecoration(),
          ),
          ListView()
        ],
      ),
    );
  }
}

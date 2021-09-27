import 'package:flutter/material.dart';

class MobilePageView extends StatefulWidget {
  MobilePageView({Key? key}) : super(key: key);

  @override
  _MobilePageViewState createState() => _MobilePageViewState();
}

class _MobilePageViewState extends State<MobilePageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('mobile'),
    );
  }
}

import 'package:flutter/material.dart';

class CinemaPageView extends StatefulWidget {
  CinemaPageView({Key? key}) : super(key: key);

  @override
  _CinemaPageViewState createState() => _CinemaPageViewState();
}

class _CinemaPageViewState extends State<CinemaPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Cinema'),
    );
  }
}

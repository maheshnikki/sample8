import 'package:flutter/material.dart';

class HealthPageView extends StatefulWidget {
  HealthPageView({Key? key}) : super(key: key);

  @override
  _HealthPageViewState createState() => _HealthPageViewState();
}

class _HealthPageViewState extends State<HealthPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Health'));
  }
}

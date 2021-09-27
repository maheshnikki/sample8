import 'package:flutter/material.dart';

class GamesPageView extends StatefulWidget {
  GamesPageView({Key? key}) : super(key: key);

  @override
  _GamesPageViewState createState() => _GamesPageViewState();
}

class _GamesPageViewState extends State<GamesPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Games'),
    );
  }
}

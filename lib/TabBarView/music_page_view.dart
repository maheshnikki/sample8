import 'package:flutter/material.dart';

class MusicPageView extends StatefulWidget {
  MusicPageView({Key? key}) : super(key: key);

  @override
  _MusicPageViewState createState() => _MusicPageViewState();
}

class _MusicPageViewState extends State<MusicPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Music'),
    );
  }
}

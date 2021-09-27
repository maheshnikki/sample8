import 'package:flutter/material.dart';

class StoriesPageView extends StatefulWidget {
  StoriesPageView({Key? key}) : super(key: key);

  @override
  _StoriesPageViewState createState() => _StoriesPageViewState();
}

class _StoriesPageViewState extends State<StoriesPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Stories'),
    );
  }
}

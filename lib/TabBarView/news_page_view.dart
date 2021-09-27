import 'package:flutter/material.dart';


class NewsPageView extends StatefulWidget {
  NewsPageView({Key? key}) : super(key: key);

  @override
  _NewsPageViewState createState() => _NewsPageViewState();
}

class _NewsPageViewState extends State<NewsPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('News'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePageView extends StatefulWidget {
  HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final List<String> imagesList = [
    "http://i.imgur.com/zuG2bGQ.jpg",
    "http://i.imgur.com/ovr0NAF.jpg",
    "http://i.imgur.com/pSHXfu5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 350,
            color: Colors.indigo.shade900,
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: false,
                enableInfiniteScroll: false,
              ),
              items: imagesList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(
                              e,
                              width: 60,
                              height: 20,
                              // fit: BoxFit.fitHeight,
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 315,horizontal: 10),
            width: 250,
            child: SizedBox(
              height: 60,
              child: Card(
                color: Colors.yellowAccent.shade700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      child: Container(
                        child: Text(
                          '6305071091',
                          ),
                      ),
                    ),
                      RaisedButton(
                        onPressed: (){},
                        child: Text('Recharge'),
                        ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

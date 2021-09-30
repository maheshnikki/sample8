import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:sample8/TabBarView/bank_page_view.dart';
import 'package:sample8/TabBarView/cinema_page_view.dart';
import 'package:sample8/TabBarView/cloud_page_view.dart';
import 'package:sample8/TabBarView/easygov_page_view.dart';
import 'package:sample8/TabBarView/engage_page_view.dart';
import 'package:sample8/TabBarView/fiber_page_view.dart';
import 'package:sample8/TabBarView/games_page_view.dart';
import 'package:sample8/TabBarView/health_page_view.dart';
import 'package:sample8/TabBarView/home_page_view.dart';
import 'package:sample8/TabBarView/mart_page_view.dart';
import 'package:sample8/TabBarView/mobile_page_view.dart';
import 'package:sample8/TabBarView/music_page_view.dart';
import 'package:sample8/TabBarView/news_page_view.dart';
import 'package:sample8/TabBarView/stories_page_view.dart';
import 'package:sample8/TabBarView/upi_page_view.dart';
import 'package:sample8/loginPage.dart';

class Home extends StatefulWidget {
  var name;
  Home({
    Key? mykey,
    this.name
  }): super(key: mykey);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 15,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                height: 130,
                padding: EdgeInsets.all(3),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  color: Colors.indigo.shade900,
                  child: DrawerHeader(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Hi, ${widget.name}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 20,
                          thickness: 1,
                        ),
                        Text(
                          'Profile & other settings',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ExpansionTile(
                  leading: Icon(Icons.phone_iphone),
                  title: Text('Mobile'),
                  children: <Widget>[
                    ListTile(
                        title: Center(child: Text('Recharge number')),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Emergency Data Loan')),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('My plans')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('My usage')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Recharge history')),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('My statement')),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Vouchers')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('My Coupons')), onTap: () {}),
                    ListTile(title: Center(child: Text('Tunes')), onTap: () {}),
                  ],
                ),
              ),
              Card(
                elevation: 5,
                child: ExpansionTile(
                  leading: Icon(Icons.network_check_sharp),
                  title: Text('Fiber'),
                  children: <Widget>[
                    ListTile(
                        title: Center(child: Text('Get Fiber')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Refer a friend')),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Recharge for a friend')),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Track order')),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Link Fiber')), onTap: () {}),
                  ],
                ),
              ),
              Card(
                elevation: 5,
                child: ExpansionTile(
                  leading: Icon(Icons.shopping_cart_rounded),
                  title: Text('Mart'),
                  children: <Widget>[
                    ListTile(
                        title: Center(child: Text('Shop by category')),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('All offers')), onTap: () {}),
                    ListTile(title: Center(child: Text('Cart')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('My orders')), onTap: () {}),
                  ],
                ),
              ),
              Card(
                elevation: 5,
                child: ExpansionTile(
                  leading: Icon(Icons.money),
                  title: Text('UPI'),
                  children: <Widget>[
                    ListTile(
                        title: Center(
                          child: Text(
                            'Join us, win rewards',
                          ),
                        ),
                        onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Send Money')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Scan & pay')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Pay Bills, win rewards')),
                        onTap: () {}),
                  ],
                ),
              ),
              Card(
                elevation: 5,
                child: ExpansionTile(
                  leading: Icon(Icons.card_giftcard_rounded),
                  title: Text('Play & Win'),
                  children: <Widget>[
                    ListTile(
                        title: Center(child: Text('Lucky Draw')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Spin2Win')), onTap: () {}),
                    ListTile(
                        title: Center(child: Text('Fun Zone')), onTap: () {}),
                  ],
                ),
              ),
              ListTile(
                  leading: Icon(Icons.money), title: Text('Pay'), onTap: () {}),
              ListTile(
                  leading: Icon(Icons.sim_card_sharp),
                  title: Text('Get SIM'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.person_outline_rounded),
                  title: Text('Recharge for a friend'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.medical_services_sharp),
                  title: Text('Vaccine Finder'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.network_wifi_sharp),
                  title: Text('Partner with network'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.language),
                  title: Text('App language'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.perm_phone_msg_sharp),
                  title: Text('Help & support'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Sign Out'),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade900,
          actions: <Widget>[
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.scanner,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Color(0xFFFFFFFF),
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                text: 'HOME',
              ),
              Tab(
                text: 'MOBILE',
              ),
              Tab(
                text: 'FIBER',
              ),
              Tab(
                text: 'HEALTH',
              ),
              Tab(
                text: 'UPI',
              ),
              Tab(
                text: 'MART',
              ),
              Tab(
                text: 'MUSIC',
              ),
              Tab(
                text: 'NEWS',
              ),
              Tab(
                text: 'ENGAGE',
              ),
              Tab(
                text: 'BANK',
              ),
              Tab(
                text: 'CINEMA',
              ),
              Tab(
                text: 'GAMES',
              ),
              Tab(
                text: 'CLOUD',
              ),
              Tab(
                text: 'STORIES',
              ),
              Tab(
                text: 'EASYGOV',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePageView(),
            MobilePageView(),
            FiberPageView(),
            HealthPageView(),
            UpiPageView(),
            MarkPageView(),
            MusicPageView(),
            NewsPageView(),
            EngagePageView(),
            BankPageView(),
            CinemaPageView(),
            GamesPageView(),
            CloudPageView(),
            StoriesPageView(),
            EasygovPageView(),
          ],
        ),
      ),
    );
  }
}

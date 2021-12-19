import 'package:flutter/material.dart';

class TabDemo extends StatelessWidget {
  const TabDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabDemo'),
          //  bottom: TabBar(),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'Clock Time',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
            Center(
              child: Text(
                'Radio Listening',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
            Center(
              child: Text(
                'Gift Card',
                style: TextStyle(fontSize: 35.0),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: SafeArea(
              child: TabBar(
            tabs: [
              Tab(
                text: 'Clock',
                icon: Icon(
                  Icons.alarm,
                  color: Colors.white,
                ),
              ),
              Tab(
                text: 'Radio',
                icon: Icon(
                  Icons.radio,
                  color: Colors.white,
                ),
              ),
              Tab(
                text: 'Gift',
                icon: Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/common.dart';

class RewardsPage extends StatefulWidget {
  @override
  _RewardsPageState createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  int _rewardPoints = 1400;
  int _maxCheckpoint = 6000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            '$_rewardPoints pts',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: LinearProgressIndicator(
              value: _rewardPoints / _maxCheckpoint,
              // valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              // backgroundColor: Colors.pink,
              minHeight: 50,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'My Rewards',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          LimitedBox(
            maxHeight: 96,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return LimitedBox(
                  maxWidth: 64,
                  child: Column(children: [
                    Image.asset('assets/food.png'),
                    Text('Name of Food'),
                  ]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 8);
              },
              itemCount: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Bonus Points',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Image.asset('assets/banner.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: Text('buy now'.toUpperCase()),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: Text('learn more'.toUpperCase()),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomBar(MyBottomBar.REWARDS),
    );
  }
}

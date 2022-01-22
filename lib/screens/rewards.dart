import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/widgets/bottom_bar.dart';

class RewardsScreen extends StatefulWidget {
  @override
  _RewardsScreenState createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  int _rewardPoints = 1400;
  int _maxCheckpoint = 6000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            '$_rewardPoints pts',
            style: Theme.of(context).textTheme.headline5,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: LinearProgressIndicator(
              value: _rewardPoints / _maxCheckpoint,
              // valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              // backgroundColor: Colors.pink,
              minHeight: 50,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              'My Rewards',
              style: Theme.of(context).textTheme.headline5,
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
                return const SizedBox(width: 8);
              },
              itemCount: 10,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              'Bonus Points',
              style: Theme.of(context).textTheme.headline5,
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
                      child: const Text('Buy Now'),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('Learn More'),
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
      bottomNavigationBar: const MyBottomBar(MyBottomBar.REWARDS),
    );
  }
}

import 'iconList.dart';
import 'package:flutter/material.dart';

import 'textpage.dart';

class Listom extends StatelessWidget {
  Listom({super.key});

// List<String>myList =['AAAA','BBB','CCC','DDD'];
  List<iconList> myList = [
    iconList(
      iconss: Icons.access_time,
      texts: 'Idea',
    ),
    iconList(
      iconss: Icons.add_alert_sharp,
      texts: 'Food',
    ),
    iconList(
      iconss: Icons.add_card,
      texts: 'Work',
    ),
    iconList(
      iconss: Icons.accessibility,
      texts: 'sport',
    ),
    iconList(
      iconss: Icons.account_balance_wallet_rounded,
      texts: 'Music',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TextPage(textK: myList[index].texts);
                    },
                  ),
                );
              },
              tileColor: Colors.white54,
              leading: Icon(
                myList[index].iconss,
              ),
              title: Text(
                myList[index].texts,
              ),
            ),
          );
        },
      ),
    );
  }
}

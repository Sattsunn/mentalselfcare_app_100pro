import 'package:flutter/material.dart';
import 'package:mentalselfcare_app_100pro/log.dart';
import 'package:mentalselfcare_app_100pro/feel.dart';
import 'package:mentalselfcare_app_100pro/skip.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('メンタルケア'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogPage()));
                },
                icon: const Icon(Icons.favorite),
                color: Colors.pink),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('今日は記録する？'),
              //yes
              ElevatedButton(
                onPressed: () {
                  //ボタンをしたら遷移のコード
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FeelPage()));
                },
                child: const Text('yes'),
              ),
              //no
              ElevatedButton(
                onPressed: () {
                  //ボタンをしたら遷移のコード
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SkipPage()));
                },
                child: const Text('no'),
              ),
            ],
          ),
        ));
  }
}

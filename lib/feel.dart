import 'package:flutter/material.dart';
import 'package:mentalselfcare_app_100pro/log.dart';

class FeelPage extends StatelessWidget {
  final widgets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('feeling'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),

              //感情グラフ

              ElevatedButton(
                onPressed: () {
                  //ボタンをしたら遷移のコード
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogPage()));
                },
                child: const Text('打ち込みに移行'),
              ),
            ],
          ),
        ));
  }
}

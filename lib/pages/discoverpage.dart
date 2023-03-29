import 'package:flutter/material.dart';
import 'package:myflutter/widgets//cellpage.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('发现'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          children: [
            CellWidget("朋友圈", "images/朋友圈.png", ""),
            CellWidget("扫一扫", "images/扫一扫.png", ""),
            CellWidget("摇一摇", "images/摇一摇.png", ""),
            CellWidget("看一看", "images/看一看.png", ""),
            CellWidget("搜一搜", "images/搜一搜.png", ""),
            CellWidget("附近的人", "images/附近的人.png", ""),
            CellWidget.B("购物", "images/购物.png", "618限时特价", "images/badge.png", 14),
            CellWidget("游戏", "images/游戏.png", ""),
            CellWidget("小程序", "images/小程序.png", ""),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:myflutter/widgets/cellpage.dart';

class CenterPage extends StatefulWidget {
  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
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
            CellWidget.B("头像", "", "", "images/Hank.png", 34),
            CellWidget("名字", "", "Flutter"),
            CellWidget("拍一拍", "", ""),
            CellWidget("微信号", "", "flutter"),
            CellWidget.A("我的二维码", "", "", "images/qrcode.png"),
            CellWidget("更多", "", ""),
            CellWidget("微信豆", "", ""),
            CellWidget("我的地址", "", ""),
            CellWidget("我的发票抬头", "", ""),
          ],
        ),
      ),
    );
  }
}
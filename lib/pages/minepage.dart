import 'package:flutter/material.dart';
import 'package:myflutter/widgets/cellpage.dart';
import 'package:myflutter/pages/centerpage.dart';

class MinePage extends StatefulWidget {
  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        color: Colors.grey[100],
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Widget page = CenterPage();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => page));
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // color: Colors.green[100],
                height: 150,
                color: Colors.white,
                child: Expanded(
                  child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              const Image(image: AssetImage("images/Hank.png"), width: 50,),
                              Container(
                                padding: EdgeInsets.all(14),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Flutter"),
                                    Text("微信号：flutter"),
                                    Image(image: AssetImage("images/add_status.png"), width: 50,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Image(image: AssetImage("images/qrcode.png"), width: 16,),
                        Container(
                          margin: EdgeInsets.only(left: 18),
                          child: Image(image: AssetImage("images/icon_right.png"), width: 14,),
                        ),
                      ]
                  ),
                ),
              ),
            ),
            CellWidget("支付", "images/微信支付.png", ""),
            CellWidget("收藏", "images/微信收藏.png", ""),
            CellWidget("朋友圈", "images/朋友圈.png", ""),
            CellWidget("卡包", "images/微信卡包.png", ""),
            CellWidget("表情", "images/微信表情.png", ""),
            CellWidget("设置", "images/微信设置.png", ""),
          ],
        )
      )
    );
  }
}

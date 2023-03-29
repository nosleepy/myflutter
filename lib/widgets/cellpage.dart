import 'package:flutter/material.dart';
import 'package:myflutter/widgets/childpage.dart';

class CellWidget extends StatefulWidget {
  String title = "";
  String imageName = "";
  String subTitle = "";
  String subImageName = "";
  double subImageSize = 0;

  CellWidget(this.title, this.imageName, this.subTitle);

  CellWidget.A(this.title, this.imageName, this.subTitle, this.subImageName);

  CellWidget.B(this.title, this.imageName, this.subTitle, this.subImageName, this.subImageSize);

  @override
  State<CellWidget> createState() => _CellWidgetState();
}

class _CellWidgetState extends State<CellWidget> {
  Color _currentColor = Colors.white;

  Widget buildImage(String imageName) {
    return Image(image: AssetImage(imageName), width: 20,);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Widget page = ChildPage(widget.title);
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => page));
        setState(() {
          _currentColor = Colors.white;
        });
      },
      onTapDown: (TapDownDetails details) {
        setState(() {
          _currentColor = Colors.grey[200]!;
        });
      },
      onTapCancel: (){
        setState(() {
          _currentColor = Colors.white;
        });
      },
      child: Container(
          color: _currentColor,
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          // color: Colors.green[100],
          height: 58,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(child: Row(
                    children: [
                      if (widget.imageName.isNotEmpty) buildImage(widget.imageName),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(widget.title),
                      ),
                    ],
                  )),
                  if (widget.subTitle.isNotEmpty) Text(widget.subTitle),
                  if (widget.subImageName.isNotEmpty) Image(image: AssetImage(widget.subImageName), width: widget.subImageSize,),
                  const Image(image: AssetImage("images/icon_right.png"), width: 14,),
                ],
              ),
              const Divider(
                height: 1.0,
                color: Color.fromRGBO(220, 220, 220, 1)
              ),
            ],
          )
      ),
    );
  }
}
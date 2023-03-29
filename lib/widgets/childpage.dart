import 'package:flutter/material.dart';

class ChildPage extends StatelessWidget {
  final String tittle;
  ChildPage(this.tittle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
      ),
      body: Center(
        child: Text(tittle),
      ),
    );
  }
}
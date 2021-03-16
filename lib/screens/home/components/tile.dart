import 'package:flutter/material.dart';
import '../../../constants.dart';

class MyTile extends StatefulWidget {
  final Widget child;
  MyTile({this.child});
  @override
  _MyTileState createState() => _MyTileState();
}

class _MyTileState extends State<MyTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            widget.child,
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 30,
            )
          ],
        ),
    ); 
  }
}

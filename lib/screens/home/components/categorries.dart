import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shop_app/screens/home/components/tile.dart';
import '../../../constants.dart';

// We need satefull widget for our categories


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 35,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
MyTile(child: Text('c1'.tr()),),
MyTile(child: Text('c2'.tr()),),
MyTile(child: Text('c3'.tr()),),
MyTile(child: Text('c4'.tr()),),
          ],
        ),
      ),
    );
  }
}



     
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../constants.dart';



class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      color: Colors.black,
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: ListTile(
                    leading: Icon(Icons.label_outline_sharp, color:kTextLightColor,),
                    title: Text('English'),
                    ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: ListTile(
                    leading: Icon(Icons.label_outline, color:kTextLightColor,),
                    title: Text('عربي'),
                    ),
                ),
              ],
            child: Icon(Icons.language, color:Colors.white, ),
               onSelected: (value) {
            if(value == 1){
              return context.locale = Locale('en'); 
            }
            if(value == 2){
              return context.locale = Locale('ar');
            }

          },
        );
  }
}

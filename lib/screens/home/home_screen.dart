import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';
import 'package:shop_app/screens/home/components/dropdown.dart';
import 'package:easy_localization/easy_localization.dart';



class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: buildAppBar(),
            body: TabBarView(
              children: [
                Body(),
                ColoredBox(
                  color: Colors.black87,
                  child: Center(
                    
                      child: Text(
                    "c2",
                    style: TextStyle(fontSize: 40),
                  ).tr(),
                  ),
                ),
                  ColoredBox(
                    color: Colors.black87,
                    child: Center(
                      child: Text(
                    "c3",
                    style: TextStyle(fontSize: 40),
                ).tr(),),
                  ),
              ],
            ),
            );
      
  }  
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black87,
      elevation: 0,
      leading: IconButton(
        icon:Icon(Icons.menu,color: Colors.white,),
        onPressed: () {
        },
      ),
      title:Text("shop".tr(),style: TextStyle(color: Colors.white),),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        MyMenu(),
        SizedBox(width: kDefaultPaddin / 2)
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Tab(
             //icon: Icon(Icons.shopping_bag_outlined, color:Colors.white ,),
            child:Text("c1".tr(), style: TextStyle(color:Colors.white ),) ,
          ),
          Tab(
           //icon: Icon(Icons.shop_rounded, color:Colors.white ,),
            child:Text("c2".tr(), style: TextStyle(color:Colors.white ),) ,
          ),
          Tab(
            //icon: Icon(Icons.shop_rounded, color:Colors.white ,),
            child:Text("c3".tr(), style: TextStyle(color:Colors.white ),) ,
          ),
        ],
      ),
    );
  }


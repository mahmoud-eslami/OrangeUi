import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';
import 'package:orange_ui/widget/brand_iten.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<BrandItem> brands = [
    BrandItem(
      title: '25% OFF',
      subTitle: 'Oro Resturant',
      shadowColor: MyColors.primaryColor,
      caption: 'Expire: today',
      imagePath: 'assets/image/m.png',
      btnShadowColor: MyColors.primaryColor,
      btnTitle: 'Redeem',
      onTapBtn: () {},
    ),
    BrandItem(
      title: '10\$ OFF',
      subTitle: 'McDonald\'s',
      shadowColor: MyColors.primaryColor,
      caption: 'Expire : today',
      imagePath: 'assets/image/m.png',
      btnShadowColor: MyColors.primaryColor,
      btnTitle: 'Redeem',
      onTapBtn: () {},
    ),
    BrandItem(
      title: '20\$ OFF',
      subTitle: 'McDonald\'s',
      shadowColor: MyColors.primaryColor,
      caption: 'Expire : today',
      imagePath: 'assets/image/m.png',
      btnShadowColor: MyColors.primaryColor,
      btnTitle: 'Redeem',
      onTapBtn: () {},
    ),
    BrandItem(
      title: '20% OFF',
      subTitle: 'McDonald\'s',
      shadowColor: MyColors.primaryColor,
      caption: 'Expire : today',
      imagePath: 'assets/image/m.png',
      btnShadowColor: Colors.grey.withOpacity(.3),
      btnTitle: 'Redeem',
      btnColor: Colors.black45,
      onTapBtn: () {},
    ),
    BrandItem(
      title: '12% OFF',
      subTitle: 'Caffe Inja',
      shadowColor: MyColors.primaryColor,
      caption: 'Expire : today',
      imagePath: 'assets/image/m.png',
      btnShadowColor: Colors.grey.withOpacity(.3),
      btnTitle: 'Redeem',
      btnColor: Colors.black45,
      onTapBtn: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Wallet',
                  style: TextStyle(
                      color: MyColors.textColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 500,
                  child: ListView(
                    padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                    children: brands,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

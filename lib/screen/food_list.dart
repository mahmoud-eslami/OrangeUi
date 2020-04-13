import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';
import 'package:orange_ui/widget/brand_iten.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
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
                BrandItem(
                  title: 'asdasd',
                  subTitle: 'asdasd',
                  shadowColor: MyColors.primaryColor,
                  caption: 'asdasd',
                  imagePath: 'assets/image/m.png',
                  btnShadowColor: MyColors.primaryColor,
                  btnTitle: 'Redeem',
                  onTapBtn: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';
import 'package:orange_ui/widget/gradient_btn.dart';

class BrandItem extends StatelessWidget {
  final Color shadowColor;
  final Color btnShadowColor;
  final Color btnColor;
  final String imagePath;
  final String btnTitle;
  final String title;
  final String subTitle;
  final String caption;
  final Function onTapBtn;

  const BrandItem(
      {Key key,
      this.shadowColor,
      this.btnColor,
      this.btnShadowColor,
      this.onTapBtn,
      this.imagePath,
      this.btnTitle,
      this.title,
      this.subTitle,
      this.caption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 130,
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor.withOpacity(.3),
                    blurRadius: 15,
                    offset: Offset(0, 6),
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: MyColors.textColor),),
                        Text(subTitle,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: MyColors.textColor),),
                        Text(caption,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.grey),),
                      ],
                    ),
                    SizedBox(width: 50,),
                    GradientButton(
                        shadowColor: btnShadowColor,
                        title: btnTitle,
                        onTap: onTapBtn)
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor.withOpacity(.3),
                    blurRadius: 15,
                    offset: Offset(0, 6),
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  height: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

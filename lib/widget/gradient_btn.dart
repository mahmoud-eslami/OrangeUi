import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';

class GradientButton extends StatelessWidget {
  final Color shadowColor;
  final Color btnColor;
  final String title;
  final Function onTap;

  const GradientButton(
      {Key key,
      @required this.shadowColor,
      this.btnColor,
      @required this.title,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(.8),
            blurRadius: 15,
            offset: Offset(0, 6),
            spreadRadius: 1,
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: btnColor ?? [
            MyColors.backGradientHighColor,
            MyColors.backGradientMediumColor,
            MyColors.backGradientLowColor,
          ],
          stops: [0.1, 0.5, 0.7],
        ),
      ),
      child: RaisedButton(
        onPressed: onTap,
        color: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        child: Text(
          '$title',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: MyColors.homeText),
        ),
      ),
    );
  }
}

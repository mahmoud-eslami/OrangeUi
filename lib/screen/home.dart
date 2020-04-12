import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              MyColors.backGradiantHighColor,
              MyColors.backGradiantMediumColor,
              MyColors.backGradiantLowColor,
            ],
            stops: [0.1, 0.5, 0.7],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Hello There.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                      color: MyColors.homeText),
                ),
                Text(
                  'Login or sign up to continue.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: MyColors.homeText),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        cursorColor: MyColors.priamryColor,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        cursorColor: MyColors.priamryColor,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Align(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    MyColors.backGradiantHighColor,
                                    MyColors.backGradiantMediumColor,
                                    MyColors.backGradiantLowColor,
                                  ],
                                  stops: [0.1, 0.5, 0.7],
                                ),
                              ),
                              child: RaisedButton(
                                onPressed: () {},
                                color: Colors.transparent,
                                elevation: 0,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Don\'t have an account ? SIGN UP',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: MyColors.homeText),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget materialPic(String imgPath){
    return Material(
      child: Image.asset(imgPath,height: 40,width: 40,),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';
import 'package:orange_ui/screen/food_list.dart';
import 'package:orange_ui/screen/third_page.dart';
import 'package:orange_ui/widget/gradient_btn.dart';

import 'forth_page.dart';

class PageManager extends StatefulWidget {
  @override
  _PageManagerState createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  int currentIndex = 0;

  List<Widget> pages = [FoodSpec(), FoodList(), ThirdPage(), ForthPage()];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              title: Text(''), icon: Icon(Icons.offline_pin)),
          BottomNavigationBarItem(
              title: Text(''), icon: Icon(Icons.account_balance_wallet)),
          BottomNavigationBarItem(
              title: Text(''), icon: Icon(Icons.person_outline)),
          BottomNavigationBarItem(title: Text(''), icon: Icon(Icons.settings)),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: MyColors.primaryColor),
        unselectedIconTheme:
            IconThemeData(color: MyColors.disableButton.withOpacity(.4)),
        onTap: onTabTapped,
      ),
      body: pages[currentIndex],
    );
  }

  Widget gradientIcon(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            MyColors.backGradientHighColor,
            MyColors.backGradientMediumColor,
            MyColors.backGradientLowColor,
          ],
          stops: [0.1, 0.5, 0.7],
        ),
      ),
      child: Icon(
        icon,
        color: Colors.white.withOpacity(.4),
      ),
    );
  }
}

class FoodSpec extends StatefulWidget {
  @override
  _FoodSpecState createState() => _FoodSpecState();
}

class _FoodSpecState extends State<FoodSpec> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Icon(
                      CupertinoIcons.search,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Offers',
                  style: TextStyle(
                      color: MyColors.textColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 430,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 300,
                          height: 340,
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: MyColors.primaryColor.withOpacity(.2),
                              blurRadius: 15,
                              offset: Offset(0, 10),
                              spreadRadius: .2,
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 310,
                              width: MediaQuery.of(context).size.width,
                              child: Material(
                                child: Image.asset(
                                  'assets/image/pizza.jpg',
                                  fit: BoxFit.cover,
                                ),
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Fellini\'s Dining',
                                        style: TextStyle(
                                            color: MyColors.textColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Price to',
                                              style: TextStyle(
                                                color: MyColors.textColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' 50% Off',
                                              style: TextStyle(
                                                color: MyColors.primaryColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  GradientButton(
                                      shadowColor: MyColors.primaryColor,
                                      title: 'Info',
                                      onTap: () {}),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

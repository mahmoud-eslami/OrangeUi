import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';
import 'package:orange_ui/screen/food_list.dart';

class PageManager extends StatefulWidget {
  @override
  _PageManagerState createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  int currentIndex;

  List<Widget> pages = [FoodSpec(), FoodList(), ThirdPage(), ForthPage()];

  @override
  void initState() {
    // TODO: implement initState
    currentIndex = 0;
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
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
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
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu,size: 30,),
                    Icon(Icons.search,size: 30,),
                  ],
                ),
                Text('Offers',style: TextStyle(color: MyColors.textColor,fontSize: 35),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class ForthPage extends StatefulWidget {
  @override
  _ForthPageState createState() => _ForthPageState();
}

class _ForthPageState extends State<ForthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool observe;
  TextEditingController _emailControll = TextEditingController();
  TextEditingController _passControll = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool autoValidator;

  @override
  void initState() {
    observe = true;
    autoValidator = false;
    super.initState();
  }

  @override
  void dispose() {
    _passControll.dispose();
    _emailControll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Form(
        key: _formKey,
        child: Container(
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
              child: SingleChildScrollView(
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
                          SizedBox(
                            height: 70,
                            child: TextFormField(
                              controller: _emailControll,
                              validator: (v) =>
                                  v.isEmpty ? 'Fill Here Please' : null,
                              cursorColor: MyColors.priamryColor,
                              style: TextStyle(
                                  color: MyColors.textColor, fontSize: 18),
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                            child: TextFormField(
                              controller: _passControll,
                              validator: (v) =>
                                  v.isEmpty ? 'Fill Here Please' : null,
                              obscureText: observe,
                              style: TextStyle(color: MyColors.textColor),
                              cursorColor: MyColors.priamryColor,
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        observe = !observe;
                                      });
                                    },
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              materialPic('assets/image/f.png',
                                  Colors.blueAccent.withOpacity(.2)),
                              SizedBox(
                                width: 16,
                              ),
                              materialPic('assets/image/g.png',
                                  Colors.grey.withOpacity(.2)),
                              SizedBox(
                                width: 80,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          MyColors.priamryColor.withOpacity(.8),
                                      blurRadius: 15,
                                      offset: Offset(0, 6),
                                      spreadRadius: 1,
                                    )
                                  ],
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
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                    }
                                  },
                                  color: Colors.transparent,
                                  elevation: 0,
                                  disabledElevation: 0,
                                  highlightElevation: 0,
                                  child: Text(
                                    'Sing In',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: MyColors.homeText),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account ?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: MyColors.homeText),
                            ),
                            TextSpan(
                              text: ' SIGN UP',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: MyColors.homeText),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget materialPic(String imgPath, Color backColor) {
    return SizedBox(
      height: 45,
      width: 45,
      child: Material(
        color: backColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Center(
          child: Image.asset(
            imgPath,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}

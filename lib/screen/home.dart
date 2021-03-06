import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';
import 'package:orange_ui/screen/food_spec.dart';
import 'package:orange_ui/widget/gradient_btn.dart';

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
                MyColors.backGradientHighColor,
                MyColors.backGradientMediumColor,
                MyColors.backGradientLowColor,
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
                      height: 50,
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
                              cursorColor: MyColors.primaryColor,
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
                              cursorColor: MyColors.primaryColor,
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
                            height: 70,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              materialPic(
                                'assets/image/f.png',
                                Colors.blueAccent.withOpacity(.2),
                              ),
                              materialPic(
                                'assets/image/g.png',
                                Colors.grey.withOpacity(.2),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              GradientButton(
                                shadowColor: MyColors.primaryColor,
                                title: 'Sign In',
                                onTap: () {
                                  if (!autoValidator) {
                                    setState(() {
                                      autoValidator = !autoValidator;
                                    });
                                  }
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PageManager(),
                                      ),
                                    );
                                  }
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
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

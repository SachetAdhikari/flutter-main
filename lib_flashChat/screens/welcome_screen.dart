import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    // with TickerProviderStateMixin {
    with
        SingleTickerProviderStateMixin {
  AnimationController controller;
  // AnimationController controller2;
  Animation animationColor;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
      //this class object is used as ticker as vsync is ticker provider
      // upperBound: 100.0, //can use upperbound more than 1 while using CurvedAnimation
    );
    // controller2 = AnimationController(
    //   duration: Duration(seconds: 1),
    //   vsync: this,
    // );
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animationColor =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
    controller.forward();
    //we can use other tween like border radius tween and so on;

    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1.0);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });
    controller.addListener(() {
      setState(() {});
      // print(controller.value); //linear
      print(animation.value); //based on the curve we've selected
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey.withOpacity(controller.value),
      // backgroundColor: Colors.white,
      backgroundColor: animationColor.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  //for animation with shared property
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    // height: 60.0,
                    // height: controller.value * 100,
                    height: animation.value * 100,
                  ),
                ),
                Text(
                  'Flash Chat',
                  // '${controller.value.toInt()}%',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

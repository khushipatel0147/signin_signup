import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin_signup/introScreen/introScreen.dart';
import 'package:signin_signup/provider/createProvider.dart';
import 'package:signin_signup/view/creatScreen.dart';
import 'package:signin_signup/view/signinScreen.dart';
import 'package:signin_signup/view/spleshScreen.dart';
import 'package:signin_signup/view/welcomeScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CreateProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'intro':(context) => IntroScreen(),
        '/': (context) => SpleshScreen(),
        'signin': (context) => SignInScreen(),
         'signup': (context) => CreateScreen(),
        'welcome': (context) => WelcomeScreen()
      },
    ),
  ));
}

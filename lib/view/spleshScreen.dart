import 'package:flutter/material.dart';
import 'package:signin_signup/utiles/shrpre.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() async {
      Shr shr=Shr();
      Map m1=await shr.read();
      bool? k = await shr.readline();

      if(k==true)
        {
                Navigator.pushReplacementNamed(context,'signin');
        }
      else
        {
          Navigator.pushReplacementNamed(context,'intro');
        }
    },);
    return SafeArea(child: Scaffold(
backgroundColor: Colors.white,
      body: Center(
        child: FlutterLogo(size: 150),
      ),
    ));

  }
}

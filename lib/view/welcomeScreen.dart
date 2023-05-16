import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin_signup/provider/createProvider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  CreateProvider? providerF;
  CreateProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<CreateProvider>(context, listen: false);
    providerT = Provider.of<CreateProvider>(context, listen: true);
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Align(
                alignment: Alignment(13,-0.5),
                child: Container(
                  height: 340,
                  width: 340,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(3,-1),
                child: Container(
                  height: 370,
                  width: 370,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(5,-1.5),
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1,-0.1),
                child: Container(
                  height: 160,
                  width: 160,
                  child: Center(child: FlutterLogo(size: 120)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 180),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 50),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "back",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 25),
                        ),
                      ),
                      SizedBox(height: 75),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue.shade900,
                                Colors.blue.shade700,
                                Colors.blue,
                              ]
                            ),),
                        height: 50,
                        width: double.infinity,
                        child: Center(
                            child: Text(
                              "Login as Maria",
                              style: TextStyle(
                                  letterSpacing: 1, fontSize: 20, color: Colors.white),
                            )),
                      ),
                      SizedBox(height: 75),
                      Text(
                        "Delete account",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
    ;
  }
}

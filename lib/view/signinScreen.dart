import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin_signup/provider/createProvider.dart';
import 'package:signin_signup/utiles/shrpre.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  CreateProvider? providerF;
  CreateProvider? providerT;
  TextEditingController txtuseremail=TextEditingController();
  TextEditingController txtuserpass=TextEditingController();
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
                alignment: Alignment(1.5, -1.40),
                child: Container(
                  height: 260,
                  width: 260,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1.75, -1.15),
                child: Container(
                  height: 290,
                  width: 290,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-2.00, -1.15),
                child: Container(
                  height: 260,
                  width: 260,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -.60),
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
                alignment: Alignment(0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 250),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                          controller: txtuseremail,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.blue, width: 1)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.blue, width: 1)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              label: Text(
                                "Username",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  letterSpacing: 1,
                                ),
                              ))),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                          controller: txtuserpass,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.lock,
                                color: Colors.blue,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.blue, width: 1)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.blue, width: 1)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              label: Text(
                                "Password",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  letterSpacing: 1,
                                ),
                              ))),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: () async {
                          var useremail=txtuseremail.text;
                          var userpass=txtuserpass.text;
                          Shr shr=Shr();
                          shr.create(login: "True");
                          Map m1=await shr.read();

                          if(useremail==m1["email"]&& userpass==m1["pass"])
                            {
                              Navigator.pushReplacementNamed(context,'welcome');
                            }
                          else
                            {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Email or Password")));
                            }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue.shade700),
                          height: 50,
                          width: double.infinity,
                          child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    letterSpacing: 1, fontSize: 20, color: Colors.white),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            "Don't have account?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 1,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'signup');
                            },
                            child: Text(
                              " Sign Up",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));

  }
}

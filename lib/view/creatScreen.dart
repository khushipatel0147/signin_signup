import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin_signup/provider/createProvider.dart';
import 'package:signin_signup/utiles/shrpre.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  CreateProvider? providerF;
  CreateProvider? providerT;
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<CreateProvider>(context, listen: false);
    providerT = Provider.of<CreateProvider>(context, listen: true);
    return SafeArea(
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
                SizedBox(height: 180),
                Text(
                  "Create",
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 50),
                ),
                Text(
                  "account",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 25),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                      controller: txtemail,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email,
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
                            "Email",
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
                      controller: txtpass,
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
                    onTap: () {
                      // var login="True";
                      var email = txtemail.text;
                      var pass = txtpass.text;
                      Shr shr = Shr();
                      shr.create(pass: pass, email: email);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Ragister Successfully")));
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue.shade700),
                      height: 50,
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 20,
                            color: Colors.white),
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
                        "Already have account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        " Sign In",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

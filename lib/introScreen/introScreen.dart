import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signin_signup/utiles/shrpre.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              body: "Lorem ipusm dolor sit amet consectetur adipiscing",
              image: Image.network(
                  "https://avatars.mds.yandex.net/i?id=e20da9cbb37dc6b1e54002ea60269ca63ea8f262-8487401-images-thumbs&n=13",
                  width: 200,
                  height: 200),
              title: "Ragister online"),
          PageViewModel(
              body: "Lorem ipusm dolor sit amet consectetur adipiscing",
              image: Image.network(
                  "https://avatars.mds.yandex.net/i?id=e20da9cbb37dc6b1e54002ea60269ca63ea8f262-8487401-images-thumbs&n=13",
                  width: 200,
                  height: 200),
              title: "Get Started"),
          PageViewModel(
              body: "Lorem ipusm dolor sit amet consectetur adipiscing",
              image: Image.network(
                  "https://avatars.mds.yandex.net/i?id=e20da9cbb37dc6b1e54002ea60269ca63ea8f262-8487401-images-thumbs&n=13",
                  height: 200,
                  width: 200),
              title: "Sit Back & Relax"),
        ],
        done: Text("Done"),
        onDone: () async {
          Shr shr=Shr();
          shr.intro();
          Navigator.pushReplacementNamed(context, 'signin');
        },
        showDoneButton: true,
        back: Text("Back"),
        showBackButton: true,
        next: Text("Next"),
        showNextButton: true,
      ),
    ));
  }
}

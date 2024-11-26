
import 'package:book_shop/commen/color_extenstion.dart';
import 'package:book_shop/commen_widget/round_button.dart';
import 'package:book_shop/view/login/sign_in_view.dart';
import 'package:book_shop/view/login/sign_up_view.dart';
import 'package:flutter/material.dart';

class Welcomeview extends StatefulWidget {
  const Welcomeview({super.key});

  @override
  State<Welcomeview> createState() => _WelcomeviewState();
}
class _WelcomeviewState extends State<Welcomeview> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "images/welcome_bg.png",
          width: media.width,
          height: media.height,
          fit: BoxFit.cover,
        ),
        SafeArea(
            child: Container(
              width: media.width,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: media.width * 0.25,
                  ),
                  Text(
                    "Books For\nEvery Taste.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: TColor.primary,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: media.width * 0.28,
                  ),
                  RoundButton(
                    title: "Sign in",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInView ()));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RoundButton(
                    title: "Sign up",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const SignUpView()));
                    },
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}

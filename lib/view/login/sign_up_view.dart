import 'package:book_shop/view/login/help_us_view.dart';
import 'package:book_shop/view/onbording/welcome_view.dart';
import 'package:flutter/material.dart';
import '../../commen/color_extenstion.dart';
import '../../commen_widget/round_button.dart';
import '../../commen_widget/round_text_field.dart';
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtCode = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isStay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon : Icon(
            Icons.arrow_back_ios,
            color: TColor.primary,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RoundTextField(
                  controller: txtFirstName,
                  hintText: "First & Last Name",
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundTextField(
                    controller: txtEmail,
                    hintText: "Email Address",
                    keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundTextField(
                  controller: txtMobile,
                  hintText: "Mobile Phone",
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundTextField(
                  controller: txtCode,
                  hintText: "Group Special Code (optional)",
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundTextField(
                  controller: txtPassword,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isStay = !isStay;
                        });
                      },
                      icon: Icon(
                        isStay ? Icons.check_box : Icons.check_box_outline_blank,
                        color: isStay
                            ? TColor.primary
                            : TColor.subTitle.withOpacity(0.3),
                      ),
                    ),
                    Text(
                      "SPlease sign me up for the monthly newsletter.",
                      style: TextStyle(
                        color: TColor.subTitle.withOpacity(0.3),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                RoundLineButton(
                  title: "Sign Up",
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:  (context) => const HelpUsView()  ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

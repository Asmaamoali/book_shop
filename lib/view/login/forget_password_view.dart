
import 'package:book_shop/view/login/recoverd_screen.dart';
import 'package:flutter/material.dart';
import '../../commen/color_extenstion.dart';
import '../../commen_widget/round_button.dart';
import '../../commen_widget/round_text_field.dart';
import '../../otp/otp_screen.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  TextEditingController txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: TColor.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),

              RoundTextField(
                controller: txtEmail,
                hintText: "Email Address",
              ),

              const SizedBox(
                height: 25,
              ),

              RoundLineButton(
                title: "Submit",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => RecoverdScreen(),
                  ),
                  );
                },
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('OR'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Verify Using Number',
                        style: TextStyle(
                            color: TColor.primary,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  }

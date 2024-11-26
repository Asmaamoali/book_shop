
import 'package:book_shop/commen_widget/round_button.dart';
import 'package:book_shop/commen_widget/round_text_field.dart';
import 'package:flutter/material.dart';

import '../commen/color_extenstion.dart';
import 'otp_number.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  TextEditingController number = TextEditingController();
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
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'OTP verification',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              RoundTextField(
                  controller: number,
                  hintText: 'Enter number'),
              SizedBox(
                height: 20.0,
              ),
              RoundLineButton(
                  title: 'Send Code',
                  onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpNumber(),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:book_shop/commen_widget/round_button.dart';
import 'package:book_shop/commen_widget/round_text_field.dart';
import 'package:book_shop/view/login/sign_in_view.dart';
import 'package:flutter/material.dart';

import '../../commen/color_extenstion.dart';

class RecoverdScreen extends StatefulWidget {
  const RecoverdScreen({super.key});

  @override
  State<RecoverdScreen> createState() => _RecoverdScreenState();
}

class _RecoverdScreenState extends State<RecoverdScreen> {

  TextEditingController txresetcode = TextEditingController();
  TextEditingController pas = TextEditingController();
  TextEditingController confermpass = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              RoundTextField(
                  controller: txresetcode,
                  hintText: 'Reset Code'),
              SizedBox(
                height: 30.0,
              ),
              RoundTextField(
                  controller: pas,
                  hintText: 'Password'),
              SizedBox(
                height: 30.0,
              ),
              RoundTextField(
                  controller: confermpass,
                  hintText: 'Confirem Password'),
              SizedBox(
                height: 20.0,
              ),
              RoundLineButton(
                  title: 'Reset Password',
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInView() ) );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

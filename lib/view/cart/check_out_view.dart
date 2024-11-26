
import 'package:book_shop/commen_widget/round_button.dart';
import 'package:book_shop/commen_widget/round_text_field.dart';
import 'package:flutter/material.dart';

import '../../commen/color_extenstion.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {

  TextEditingController numbercard = TextEditingController();
  TextEditingController dateOne = TextEditingController();
  TextEditingController date2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: TColor.primary
          ),
        ),
        centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Select Payment : ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  IconButton(
                      onPressed: (){

                      },
                      icon: Icon(
                        Icons.radio_button_checked_outlined,
                        color: TColor.primary,
                      )),
                  Image.asset('images/22.png',
                  width: 50,
                    height: 80,
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(
                          Icons.radio_button_off,
                        color: TColor.primary,
                      )),
                  Image.asset('images/33 (1).png',
                    width: 50,
                    height: 80,
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(
                          Icons.radio_button_off,
                        color: TColor.primary,
                      )),
                  Image.asset('images/88.png',
                    width: 50,
                    height: 80,
                  ),

                ],
              ),
            ),

            Text(
          'Card Number',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
            SizedBox(
              height: 10,
            ),
            RoundTextField(
                controller: numbercard,
                hintText: 'Enter Your Card Number'),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Expiration Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
      width: 170,
      decoration: BoxDecoration(
          color: TColor.textbox, borderRadius: BorderRadius.circular(20)),
    child: TextField(
    decoration:  InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    hintText: 'MM / yy',
    labelStyle: const TextStyle(
    fontSize: 15,
    ),
    ),
    ),
    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Expiration Date',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 170,
                        decoration: BoxDecoration(
                            color: TColor.textbox, borderRadius: BorderRadius.circular(20)),
                             child: TextField(
                           decoration:  InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                  focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                 errorBorder: InputBorder.none,
                                 hintText: 'CVV',
                               labelStyle: const TextStyle(
                              fontSize: 15,
    ),
    ),
    ),
    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Name One Card',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RoundTextField(
                controller: dateOne,
                hintText: 'Enter Your Name'),
            SizedBox(
              height: 50,
            ),
            RoundLineButton(
                title: 'Order Now',
                onPressed: (){})
          ],

        ),
      ) ,
    );
  }
}

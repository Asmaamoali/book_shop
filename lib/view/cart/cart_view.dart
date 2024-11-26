
import 'package:book_shop/commen_widget/round_button.dart';
import 'package:book_shop/view/cart/check_out_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../commen/color_extenstion.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
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
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('images/1.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Dissapearance of Emila Zola',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.delete_outline,
                          color: TColor.primary,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Michael Rosen',
                    ),
            SizedBox(
              height: 10,
            ),
            RatingBar.builder(
              initialRating: 2,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 15,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: TColor.primary,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),

                    SizedBox(height: 30,),

                    Text(
                      '\$300.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: TColor.primary,
                        fontSize: 20
                      ),

                    ),


                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                right: 20
              ),
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('images/2.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fatherhood',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Icon(Icons.delete_outline,
                          color: TColor.primary,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Marcus Berkmann',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                      initialRating: 2,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: TColor.primary,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),

                    SizedBox(height: 30,),

                    Text(
                      '\$300.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: TColor.primary,
                          fontSize: 20
                      ),

                    ),


                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                  right: 20
              ),
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('images/3.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Time Travellers Handbook',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.delete_outline,
                          color: TColor.primary,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Stride Lottie',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                      initialRating: 2,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: TColor.primary,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),

                    SizedBox(height: 30,),

                    Text(
                      '\$300.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: TColor.primary,
                          fontSize: 20
                      ),

                    ),


                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(
                  right: 20
              ),
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            RoundLineButton(
                title: 'CheckOut',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOutView() ) );
                }),
            SizedBox(
              height: 20,
            ),
            RoundLineButton(
                title: 'Continue Shopping',
                onPressed: (){}),
          ],
        ),
      ),
    );
  }
}

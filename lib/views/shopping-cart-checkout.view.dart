import 'package:boxapp/utils/appBarBase.dart';
import 'package:boxapp/widgets/checkout-info-address.widget.dart';
import 'package:boxapp/widgets/checkout-info-customer.widget.dart';
import 'package:boxapp/widgets/checkout-info-payment-message.widget.dart';
import 'package:boxapp/widgets/checkout-info-payment-total.widget.dart';
import 'package:boxapp/widgets/checkout-info-payment.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
        title: "Checkout",
        widgets: <Widget>[
          Icon(FontAwesomeIcons.ellipsisV, color: Colors.black54, size: 20),
          Padding(
            padding: EdgeInsets.only(right: 16),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            InfoCustomer(),
            InfoPayment(),
            InfoAddress(),
            InfoPaymentMessage(),
          ],
        ),
      ),
      bottomNavigationBar: InfoTotalPayment(),
    );
  }
}

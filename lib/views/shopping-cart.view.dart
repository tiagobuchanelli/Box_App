import 'package:boxapp/store/database-orders.store.dart';
import 'package:boxapp/utils/appBarBase.dart';
import 'package:boxapp/widgets/cards/card-shopping-cart.dart';
import 'package:boxapp/widgets/checkout-info-payment-total.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoppingCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
        title: "Venda",
        widgets: <Widget>[
          Icon(FontAwesomeIcons.userEdit, color: Colors.black, size: 20),
          Padding(
            padding: EdgeInsets.only(right: 20),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                primary: false, //using listview and SingleChildScrollView
                shrinkWrap: true, //using listview and SingleChildScrollView
                itemCount: listOrders.length,
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(0),
                    child: CardShoppingCart(index, listOrders)),
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              border: Border.all(width: 0, color: Colors.grey[300]),
              /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
            ),
            child: InfoTotalPayment("shoppingCart"),
          ),
        ],
      ),
    );
  }
}

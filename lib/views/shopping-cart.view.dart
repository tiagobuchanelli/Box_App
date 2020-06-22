import 'package:boxapp/store/database-orders.store.dart';
import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/utils/appBarBase.dart';
import 'package:boxapp/utils/treatments/RouteGenerator.dart';
import 'package:boxapp/views/shopping-cart-checkout.view.dart';
import 'package:boxapp/widgets/cards/card-orders.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoppingCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
        title: "Nova Venda",
        widgets: <Widget>[
          Icon(FontAwesomeIcons.userPlus, color: Colors.black54, size: 20),
          Padding(
            padding: EdgeInsets.only(right: 16),
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
                    child: CardOrders(index, listOrders)),
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
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 0,
                      top: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "TOTAL",
                          style: AppTheme().textTheme.title.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        Text(
                          "R\$4250",
                          style: AppTheme().textTheme.title.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: EdgeInsets.only(
                      right: 0,
                    ),
                    child: FlatButton(
                      child: Text(
                        "PRÓXIMO",
                        style: AppTheme().textTheme.title.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteGenerator.shoppingCheckout);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:boxapp/store/database-latest-orders.store.dart';
import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/widgets/cards/card-last-accounts-balance.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LatestOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 0, bottom: 0, top: 30),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 0, top: 0, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Últimas Vendas",
                    style: AppTheme()
                        .textTheme
                        .headline2
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    FontAwesomeIcons.ellipsisV,
                    color: Colors.grey[500],
                    size: 14,
                  ),
                ],
              ),
            ),
          ),
          //Divider(height: 0.5, color: Colors.grey[300]),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              /*borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(width: 0, color: Colors.transparent),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300].withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],*/
            ),
            child: Column(
              children: <Widget>[
                ListView.builder(
                  padding: EdgeInsets.all(0),
                  primary: false, //using listview and SingleChildScrollView
                  shrinkWrap: true, //using listview and SingleChildScrollView
                  itemCount: lastOrders.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(0),
                    child: CardAccountsBalance(index, lastOrders),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FlatButton(
                        splashColor:
                            Theme.of(context).primaryColor.withOpacity(0.3),
                        child: Text(
                          "DETALES",
                          //textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

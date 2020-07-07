import 'package:boxapp/store/database-latest-orders.store.dart';
import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/widgets/cards/card-bank-account.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BankAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 0),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 0, top: 0, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Saldo em Contas",
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
              //color: Colors.white,
              padding: EdgeInsets.only(top: 0, bottom: 10),
              //height: 370.0,
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
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                primary: false, //using listview and SingleChildScrollView
                shrinkWrap: true, //using listview and SingleChildScrollView
                /*separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    color: Colors.grey[400],
                    height: 0.8,
                  ),
                ),*/
                itemCount: listBankAccounts.length,
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(0),
                    child: CardBankAccount(index, listBankAccounts)),
              )),
        ],
      ),
    );
  }
}

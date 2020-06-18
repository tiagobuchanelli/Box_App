import 'package:boxapp/store/database-latest-orders.store.dart';
import 'package:boxapp/widgets/cards/card-last-accounts-balance.dart';
import 'package:boxapp/widgets/cards/card-last-orders.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 30),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.grey[100],
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 0, top: 0, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Próximos Lançamentos",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black87.withOpacity(0.7),
                            //letterSpacing: .0,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
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
              padding: EdgeInsets.only(top: 0, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(width: 0, color: Colors.transparent),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300].withOpacity(0.8),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
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
                itemCount: listAccountsBalance.length,
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(0),
                    child: CardAccountsBalance(index, listAccountsBalance)),
              )),
        ],
      ),
    );
  }
}

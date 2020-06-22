import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 0, color: Colors.transparent),
        /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 15, bottom: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Forma de Pagamento",
                    style: AppTheme()
                        .textTheme
                        .display4
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.creditCard,
                        color: Colors.black87,
                        size: 14,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                      ),
                      Icon(
                        FontAwesomeIcons.ccVisa,
                        color: Colors.black87,
                        size: 14,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          border:
                              Border.all(width: 0, color: Colors.transparent),
                        ),
                        child: Icon(
                          FontAwesomeIcons.creditCard,
                          color: Colors.black87,
                          size: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                    ),
                    Text(
                      "Dinheiro",
                      style: AppTheme().textTheme.display2,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Icon(
                          FontAwesomeIcons.plusCircle,
                          color: Colors.white,
                          size: 12,
                        ),
                        FlatButton(
                          child: Text(
                            "Forma de Pagamento",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    //letterSpacing: .0,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

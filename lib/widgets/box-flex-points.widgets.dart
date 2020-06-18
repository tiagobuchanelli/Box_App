import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxFlexPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 30),
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
                    "Meta",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black87.withOpacity(0.7),
                            //letterSpacing: .0,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
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
                color: Theme.of(context).primaryColor,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  /*Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Text(
                        "Pontos",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white,
                                //letterSpacing: .0,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),*/
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              height: 75,
                              width: 75,
                              child: CircularProgressIndicator(
                                  //semanticsLabel: "TEste",
                                  //semanticsValue: "Teste 2",
                                  strokeWidth: 7,
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  value: 0.8,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white)),
                            ),
                            Positioned(
                              top: 5,
                              bottom: 5,
                              left: 5,
                              right: 5,
                              child: Icon(
                                FontAwesomeIcons.trophy,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          //color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1.240,00",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          //letterSpacing: .0,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 5),
                                  child: Text(
                                    "R\$",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            //letterSpacing: .0,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 5, bottom: 5),
                    child: Divider(
                      height: 0.5,
                      color: Colors.grey[100].withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          "Objetivo",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.grey[100],
                                  //letterSpacing: .0,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 10),
                        child: Text(
                          "R\$2.000,00",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.grey[100],
                                  //letterSpacing: .0,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget _cardFlexPoints(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
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
      ),
    );
  }
}

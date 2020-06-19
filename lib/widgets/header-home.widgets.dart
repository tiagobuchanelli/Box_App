import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderHome extends StatefulWidget {
  @override
  _HeaderHomeState createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  bool isChecked = false;
  bool isHideVal = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              //padding: EdgeInsets.only(top: 0),
              color: Colors.white, //Theme.of(context).primaryColor,
              height: 253,
              /*decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor,
                    Color(0xff3C90E6),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(width: 0, color: Colors.transparent),
              ),*/
            ),
            Container(
              height: 42,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(width: 0, color: Colors.transparent),
              ),
            )
          ],
        ),
        Positioned(
          top: 35,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    width: 200,
                    color: Colors.transparent,
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Junho ",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Icon(
                          FontAwesomeIcons.caretDown,
                          color: Colors.black,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 40,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isHideVal = !isHideVal;
                        });
                      },
                      child: isHideVal
                          ? Icon(
                              FontAwesomeIcons.eyeSlash,
                              color: Colors.black54,
                              size: 20,
                            )
                          : Icon(
                              FontAwesomeIcons.eye,
                              color: Colors.black54,
                              size: 20,
                            ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                    ),
                    Icon(
                      FontAwesomeIcons.ellipsisV,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          top: 110,
          child: Container(
            height: 100,
            //color: Colors.red,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                isHideVal
                    ? Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 10),
                        child: Container(
                          padding: EdgeInsets.only(top: 0),
                          color: Colors.grey[300],
                          height: 15,
                          width: 150,
                        ),
                      )
                    : Text(
                        "R\$ 11.318,26 ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 30,
                                fontWeight: FontWeight.normal)),
                      ),
                Text(
                  "Saldo Atual",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          top: 198.0,
          child: Container(
            //color: Colors.pink,
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              //border: Border.all(width: 0, color: Colors.red),
              //borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(width: 0, color: Colors.transparent),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300].withOpacity(0.4),
                  spreadRadius: 0.1,
                  blurRadius: 0.1,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              //color: Colors.deepPurple,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.donate,
                          color: Colors.green.withOpacity(0.9),
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Receitas",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      //letterSpacing: .0,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                            isHideVal
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 0),
                                      color: Colors.grey[300],
                                      height: 10,
                                      width: 100,
                                    ),
                                  )
                                : Text(
                                    "R\$25.450,00",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color:
                                                Colors.green.withOpacity(0.9),
                                            //letterSpacing: .0,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.donate,
                          color: Colors.red.withOpacity(0.9),
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Despesas",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      //letterSpacing: .0,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                            ),
                            isHideVal
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 0),
                                      color: Colors.grey[300],
                                      height: 10,
                                      width: 100,
                                    ),
                                  )
                                : Text(
                                    "R\$45.450,00",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.red.withOpacity(0.9),
                                            //letterSpacing: .0,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

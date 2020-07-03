import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              color: Colors
                  .white, //AppTheme().primaryColor, //, //Theme.of(context).primaryColor,
              height: 170,
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
              height: 1,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0, color: Colors.transparent),
              ),
            )
          ],
        ),
        /*Positioned(
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
                  child: Text(
                    "Dashboard ",
                    textAlign: TextAlign.left,
                    style: AppTheme()
                        .textTheme
                        .title, //Caso precisar subrescrever o método AppTheme().textTheme.title.copyWith(color: Colors.red, fontSize: 45, fontWeight: FontWeight.w600)
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 65,
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
                      padding: EdgeInsets.only(right: 16),
                    ),
                    /*Icon(
                      FontAwesomeIcons.cartArrowDown,
                      color: Colors.black54,
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                    )*/
                  ],
                ),
              )
            ],
          ),
        ),*/
        Positioned(
          left: 16,
          right: 16,
          top: 35,
          child: Container(
            height: 120,
            //color: Colors.red,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      padding: EdgeInsets.only(right: 0),
                    ),
                    /*Icon(
                      FontAwesomeIcons.cartArrowDown,
                      color: Colors.black54,
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                    )*/
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    isHideVal
                        ? Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Container(
                              padding: EdgeInsets.only(top: 0),
                              color: Colors.grey[300],
                              height: 15,
                              width: 150,
                            ),
                          )
                        : Text(
                            "R\$ 280.000,00 ",
                            textAlign: TextAlign.center,
                            style: AppTheme()
                                .textTheme
                                .headline4
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                    ),
                    Text("Saldo Atual",
                        textAlign: TextAlign.center,
                        style: AppTheme().textTheme.headline3),
                  ],
                ),
              ],
            ),
          ),
        ),
        /*Positioned(
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
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red[200],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                style: AppTheme().textTheme.display2.copyWith(
                                    color: Colors.black.withOpacity(0.6)),
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
                                      "R\$425.450,00",
                                      textAlign: TextAlign.left,
                                      style: AppTheme()
                                          .textTheme
                                          .display4
                                          .copyWith(
                                              color:
                                                  Colors.green.withOpacity(0.9),
                                              fontWeight: FontWeight.w500),
                                    )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue[300],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                style: AppTheme().textTheme.display2.copyWith(
                                    color: Colors.black.withOpacity(0.6)),
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
                                      "R\$145.450,00",
                                      textAlign: TextAlign.left,
                                      style: AppTheme()
                                          .textTheme
                                          .display4
                                          .copyWith(
                                              color:
                                                  Colors.red.withOpacity(0.9),
                                              fontWeight: FontWeight.w500),
                                    )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),*/
      ],
    );
  }
}

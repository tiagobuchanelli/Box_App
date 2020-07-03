import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CardGoals extends StatelessWidget {
  int indexPass;
  List listGoals;
  String prefixColor = '0xff';

  CardGoals(this.indexPass, this.listGoals);

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.white,
        width: 350,
        padding: EdgeInsets.only(top: 0, bottom: 10),
        margin: EdgeInsets.only(right: 10, left: 10),
        //height: 370.0,
        decoration: BoxDecoration(
          color: Color(int.parse(prefixColor + listGoals[indexPass].back)),
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
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  listGoals[indexPass].goal,
                  textAlign: TextAlign.left,
                  style: AppTheme().textTheme.headline2.copyWith(
                      color: listGoals[indexPass].style == 'dark'
                          ? Colors.white
                          : Colors.grey[700]),
                ),
              ),
            ),
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
                        height: 60,
                        width: 60,
                        child: CircularProgressIndicator(
                            //semanticsLabel: "TEste",
                            //semanticsValue: "Teste 2",
                            strokeWidth: 7,
                            backgroundColor:
                                listGoals[indexPass].style == 'dark'
                                    ? Colors.grey[400].withOpacity(0.4)
                                    : Colors.grey[400].withOpacity(0.4),
                            value: 0.8,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                listGoals[indexPass].style == 'dark'
                                    ? Colors.white
                                    : Colors.grey[700])),
                      ),
                      Positioned(
                        top: 5,
                        bottom: 5,
                        left: 5,
                        right: 5,
                        child: Icon(
                          FontAwesomeIcons.trophy,
                          color: listGoals[indexPass].style == 'dark'
                              ? Colors.white
                              : Colors.grey[700],
                          size: 20,
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
                            listGoals[indexPass].resGoal,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: listGoals[indexPass].style == 'dark'
                                        ? Colors.white
                                        : Colors.grey[700],
                                    //letterSpacing: .0,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 5),
                            child: Text(
                              "R\$",
                              textAlign: TextAlign.left,
                              style: AppTheme().textTheme.headline3.copyWith(
                                  color: listGoals[indexPass].style == 'dark'
                                      ? Colors.white
                                      : Colors.grey[700]),
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
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
              child: Divider(
                height: 0.5,
                color: listGoals[indexPass].style == 'dark'
                    ? Colors.grey[400].withOpacity(0.5)
                    : Colors.grey[700],
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
                    style: AppTheme().textTheme.display2.copyWith(
                        color: listGoals[indexPass].style == 'dark'
                            ? Colors.white
                            : Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    listGoals[indexPass].valGoal,
                    textAlign: TextAlign.left,
                    style: AppTheme().textTheme.display2.copyWith(
                        color: listGoals[indexPass].style == 'dark'
                            ? Colors.white
                            : Colors.grey[700]),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

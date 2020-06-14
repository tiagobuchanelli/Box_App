import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Menuview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          //color: Colors.yellow,
          child: Text(
            "Opções",
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.white, fontSize: 24)),
          ),
        ),
        actions: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                FontAwesomeIcons.slidersH,
                color: Colors.white,
                size: 22,
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

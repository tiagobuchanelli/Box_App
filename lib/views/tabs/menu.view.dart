import 'package:boxapp/utils/appBarBase.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Menuview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
        title: "Mais Opções",
        widgets: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              FontAwesomeIcons.ellipsisV,
              color: Colors.black54,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}

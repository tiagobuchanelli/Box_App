import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBankAccount extends StatelessWidget {
  int indexPass;
  List listCust;

  CardBankAccount(@required this.indexPass, @required this.listCust);

  @override
  Widget build(BuildContext context) {
    return _cardCategorias(context, indexPass, listCust);
  }

  _buildIcon(String type) {
    if (type == 'C') {
      return FontAwesomeIcons.wallet;
    } else if (type == 'B') {
      return FontAwesomeIcons.landmark;
    } else if (type == 'P') {
      return FontAwesomeIcons.piggyBank;
    } else {
      return FontAwesomeIcons.wallet;
    }
  }

  Widget _cardCategorias(BuildContext context, int index, List lista) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  _buildIcon(lista[index].type),
                  color: Colors.green,
                  size: 25,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ListTile(
              //leading: Icon(Icons.people),
              title: Text(
                lista[index].name,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black,
                        //letterSpacing: .0,
                        fontSize: 14,
                        fontWeight: FontWeight.normal)),
              ),
              subtitle: Text(
                lista[index].price,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey,
                        //letterSpacing: .0,
                        fontSize: 14,
                        fontWeight: FontWeight.normal)),
              ),
              trailing: Icon(
                FontAwesomeIcons.plus,
                color: Colors.green,
                size: 16,
              ),
              //subtitle: Text(lista[index].date),
            ),
          )
        ],
      ),
    );
  }
}

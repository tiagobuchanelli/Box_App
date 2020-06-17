import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CardAccountsBalance extends StatelessWidget {
  int indexPass;
  List listCust;

  CardAccountsBalance(@required this.indexPass, @required this.listCust);

  @override
  Widget build(BuildContext context) {
    return _cardCategorias(context, indexPass, listCust);
  }

  Widget _cardCategorias(BuildContext context, int index, List lista) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  lista[index].type == 'P'
                      ? FontAwesomeIcons.arrowAltCircleDown
                      : FontAwesomeIcons.arrowAltCircleUp,
                  color: lista[index].type == 'P' ? Colors.red : Colors.green,
                  size: 20,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListTile(
              //leading: Icon(Icons.people),
              title: Text(
                lista[index].name,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey[600],
                        //letterSpacing: .0,
                        fontSize: 14,
                        fontWeight: FontWeight.normal)),
              ),
              trailing: Text(
                lista[index].price,
                textAlign: TextAlign.right,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey[700],
                        //letterSpacing: .0,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
              //subtitle: Text(lista[index].date),
            ),
          )
        ],
      ),
    );
  }
}

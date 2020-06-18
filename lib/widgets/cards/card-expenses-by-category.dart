import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CardExpenseByCategory extends StatelessWidget {
  int indexPass;
  List listCust;

  CardExpenseByCategory(@required this.indexPass, @required this.listCust);

  @override
  Widget build(BuildContext context) {
    return _cardCategorias(context, indexPass, listCust);
  }

  Widget _cardCategorias(BuildContext context, int index, List lista) {
    return Container(
      child: ListTile(
        //leading: Icon(Icons.people),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              lista[index].type == 'P'
                  ? FontAwesomeIcons.flag
                  : FontAwesomeIcons.flag,
              color: lista[index].type == 'P' ? Colors.red : Colors.green,
              size: 16,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
            ),
            Text(
              "20/06/2020",
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.grey[700],
                      //letterSpacing: .0,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
          ],
        ),
        //subtitle: Text(lista[index].date),
      ),
    );
  }
}

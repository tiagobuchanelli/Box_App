import 'package:boxapp/views/customer-detail.view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardCustomers extends StatelessWidget {
  int indexPass;
  List listCust;

  CardCustomers(@required this.indexPass, @required this.listCust);

  @override
  Widget build(BuildContext context) {
    return _cardCategorias(context, indexPass, listCust);
  }

  Widget _cardCategorias(BuildContext context, int index, List lista) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(width: 0, color: Colors.transparent),
      ),
      child: ListTile(
        contentPadding:
            EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 16),
        leading: CircleAvatar(
            maxRadius: 25,
            backgroundColor: Colors.grey,
            minRadius: 20,
            backgroundImage: NetworkImage(lista[index].thumb)),
        trailing: Icon(Icons.keyboard_arrow_right),
        title: Align(
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 2),
            child: Text(
              lista[index].name,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black87,
                      //letterSpacing: .0,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          alignment: Alignment.topLeft,
        ),
        subtitle: Align(
          child: Padding(
            padding: EdgeInsets.only(top: 0, left: 0),
            child: Text(
              lista[index].city,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.grey[600],
                      //letterSpacing: .0,
                      fontSize: 14,
                      fontWeight: FontWeight.normal)),
            ),
          ),
          alignment: Alignment.topLeft,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CustomerDetail(lista[index].name,
                  lista[index].city, lista[index].backgroundImage),
            ),
          );
        },
      ),
    );
  }
}

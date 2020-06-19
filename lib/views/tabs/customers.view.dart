import 'package:boxapp/utils/appBarBase.dart';
import 'package:boxapp/widgets/list-customers.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: BaseAppBar(
          backgroundColor: Colors.white,
          title: "Clientes",
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Recentes",
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.black54, fontSize: 18)),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "Filtrar",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black54, fontSize: 18)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListCustomers(),
            ],
          ),
        ));
  }
}

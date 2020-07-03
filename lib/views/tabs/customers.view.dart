import 'package:boxapp/utils/appBarBase.dart';
import 'package:boxapp/widgets/list-customers.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: BaseAppBar(
          backgroundColor: Colors.white,
          title: "Clientes",
          widgets: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                FontAwesomeIcons.search,
                color: Colors.black54,
                size: 20,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              ListCustomers(),
            ],
          ),
        ));
  }
}

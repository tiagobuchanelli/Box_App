import 'package:boxapp/models/item-categ.model.dart';
import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cards/card-section-stocks.dart';

class SectionPageStocks extends StatelessWidget {
  final String titleSection;
  final List<ItemCateg> listData;

  SectionPageStocks(@required this.titleSection, @required this.listData);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  titleSection,
                  style: AppTheme().textTheme.display3,
                ),
                Text(
                  "Ver Todos",
                  textAlign: TextAlign.end,
                  style: AppTheme().textTheme.subhead,
                ),
              ],
            ),
          ),
        ),
        Container(
            color: Colors.white,
            //margin: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            height: 330.0,
            child: Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  return CardSection(index, listData);
                },
              ),
            )),
      ],
    );
  }
}

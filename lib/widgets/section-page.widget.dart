import 'package:boxapp/models/item-categ.model.dart';
import 'package:boxapp/widgets/cards/card-section-stocks.dart';
import 'package:flutter/material.dart';

class SectionPage extends StatelessWidget {
  final String titleSection;
  final List<ItemCateg> listData;

  SectionPage(@required this.titleSection, @required this.listData);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[100],
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
            child: Row(
              children: <Widget>[
                Text(
                  titleSection,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    //fontFamily: 'Red',
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
            color: Colors.grey[100],
            //margin: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            height: 370.0,
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

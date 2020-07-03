import 'package:boxapp/store/database-latest-orders.store.dart';
import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/widgets/cards/card-goals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoxGoals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 30),
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, right: 0, top: 0, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Objetivos",
                    style: AppTheme()
                        .textTheme
                        .headline2
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    FontAwesomeIcons.ellipsisV,
                    color: Colors.grey[500],
                    size: 14,
                  ),
                ],
              ),
            ),
          ),
          //Divider(height: 0.5, color: Colors.grey[300]),
          Container(
            margin: EdgeInsets.only(left: 0, right: 0),
            height: 240,
            color: Colors.transparent,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              //primary: false, //using listview and SingleChildScrollView
              //shrinkWrap: true, //using listview and SingleChildScrollView
              /*separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Divider(
                      color: Colors.grey[400],
                      height: 0.8,
                    ),
                  ),*/
              scrollDirection: Axis.horizontal,
              itemCount: listGoals.length,
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(0),
                  child: CardGoals(index, listGoals)),
            ),
          )
        ],
      ),
    );
  }
}

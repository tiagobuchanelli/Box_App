import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;

  CategoryItem({@required this.image, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      //color: Colors.red,
      child: Column(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 5),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                new BoxShadow(
                  color: Colors.black12,
                  offset: new Offset(1, 1),
                  blurRadius: 2,
                  spreadRadius: 2,
                )
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(64),
              ),
              border: Border.all(color: Theme.of(context).primaryColor),
            ),
            child: Image.asset(image),
          ),
          Text(
            name,
            maxLines: 2,
            textAlign: TextAlign.left,
            style: AppTheme()
                .textTheme
                .display2
                .copyWith(color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}

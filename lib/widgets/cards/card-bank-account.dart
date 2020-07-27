import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardBankAccount extends StatelessWidget {
  int indexPass;
  List listCust;
  String prefixColor = '0xff';

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
              padding: EdgeInsets.only(left: 10, right: 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  _buildIcon(lista[index].type),
                  color: Color(int.parse(prefixColor + lista[index].color)),
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
                style: AppTheme()
                    .textTheme
                    .headline3
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                lista[index].price,
                style:
                    AppTheme().textTheme.headline3.copyWith(color: Colors.grey),
              ),
              trailing: Icon(
                FontAwesomeIcons.plus,
                color: Theme.of(context).primaryColor,
                size: 14,
              ),
              //subtitle: Text(lista[index].date),
            ),
          )
        ],
      ),
    );
  }
}

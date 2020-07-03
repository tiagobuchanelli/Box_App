import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';

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
          /*Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  lista[index].type == 'P'
                      ? FontAwesomeIcons.flag
                      : FontAwesomeIcons.flag,
                  color: lista[index].type == 'P' ? Colors.red : Colors.green,
                  size: 25,
                ),
              ),
            ),
          ),*/
          Expanded(
            flex: 1,
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
                "20/06/2020",
                //textAlign: TextAlign.right,
                style:
                    AppTheme().textTheme.headline3.copyWith(color: Colors.grey),
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  /*Icon(
                    lista[index].type == 'P'
                        ? FontAwesomeIcons.flag
                        : FontAwesomeIcons.flag,
                    color: lista[index].type == 'P' ? Colors.red : Colors.green,
                    size: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                  ),*/
                  Text(
                    lista[index].price,
                    //textAlign: TextAlign.right,
                    style: AppTheme()
                        .textTheme
                        .headline3
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
              //subtitle: Text(lista[index].date),
            ),
          )
        ],
      ),
    );
  }
}

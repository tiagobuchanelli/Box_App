import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/utils/appBarBase.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menuview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
        title: "Mais Opções",
        widgets: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              FontAwesomeIcons.ellipsisV,
              color: Colors.black54,
              size: 20,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 10, left: 20, right: 20),
        child: ListView(
          //padding: EdgeInsets.only(top: 10, bottom: 10),
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.shoppingCart,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Vendas',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 2);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.stickyNote,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Orçamentos',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.donate,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Contas a Pagar',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 3);
                //Navigator.pushNamed(context, RouteGenerator.messages);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.handHoldingUsd,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Contas a Receber',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 3);
                //Navigator.pushNamed(context, RouteGenerator.messages);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.cubes,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Inventário',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 2);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.chartBar,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Relatórios',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 2);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.trophy,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Objetivos',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 2);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.cogs,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Configurações',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 2);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.headset,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Ajuda',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 2);
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 8, bottom: 8, right: 0, left: 0),
              leading: Icon(
                FontAwesomeIcons.signOutAlt,
                size: 20,
                color: Colors.black.withOpacity(0.7),
              ),
              title: Text('Sair',
                  style: AppTheme()
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.black.withOpacity(0.8))),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //_isAnonimous(context, 2);
              },
            ),
          ]).toList(),
        ),
      ),
    );
  }
}

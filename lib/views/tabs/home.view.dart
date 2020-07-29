import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/utils/appBarBase.dart';
import 'package:boxapp/utils/slide-menu.utils.dart';
import 'package:boxapp/utils/treatments/RouteGenerator.dart';
import 'package:boxapp/widgets/account-balance.widget.dart';
import 'package:boxapp/widgets/box-bank-accounts.widgets.dart';
import 'package:boxapp/widgets/box-goals.widgets.dart';
import 'package:boxapp/widgets/header-home.widgets.dart';
import 'package:boxapp/widgets/latest-orders.widget.dart';
import 'package:boxapp/widgets/monthly-balance.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController _searchController = new TextEditingController();
  bool showAlert = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
        title: "Dashboard",
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
          children: <Widget>[
            HeaderHome(),
            //OptionsSection(),
            showAlert
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SlideMenu(
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        child: new ListTile(
                          title: new Container(
                              child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 0, right: 10),
                                child: Icon(
                                  FontAwesomeIcons.solidFlag,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              new Text(
                                "Você tem alertas importantes!!",
                                style: AppTheme()
                                    .textTheme
                                    .display2
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          )),
                        ),
                      ),
                      menuItems: <Widget>[
                        new Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                      colorBckOption: Colors.red,
                    ),
                  )
                : Container(),
            Container(
              margin: EdgeInsets.only(top: 0, bottom: 20),
              height: 10,
              color: Colors.grey[100],
            ),
            BankAccounts(),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 0),
              height: 10,
              color: Colors.grey[100],
            ),
            MonthlyBalance(),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 0),
              height: 10,
              color: Colors.grey[100],
            ),
            AccountBalance(),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 0),
              height: 10,
              color: Colors.grey[100],
            ),
            LatestOrders(),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 0),
              height: 10,
              color: Colors.grey[100],
            ),
            BoxGoals(),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        //marginBottom: 20,
        //marginRight: 16,
        backgroundColor: Theme.of(context).primaryColor,
        closeManually: false,
        child: Icon(
          FontAwesomeIcons.plus,
          color: Colors.white,
          size: 16,
        ),
        //animatedIcon: AnimatedIcons.menu_close,
        //animatedIconTheme: IconThemeData(size: 22.0),
        //tooltip: "teste",
        overlayColor: Colors.black,
        overlayOpacity: 0.2,
        shape: CircleBorder(),
        elevation: 4,
        onOpen: () => print("Aberto"),
        onClose: () => print("Fechado"),
        children: [
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.shoppingCart,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
            label: "Venda",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Colors.white,
            labelBackgroundColor: Colors.white,
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.shoppingCart);
            },
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.stickyNote,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
            label: "Orçamento",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Colors.white,
            labelBackgroundColor: Colors.white,
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.arrowAltCircleUp,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
            label: "Receita",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Colors.white,
            labelBackgroundColor: Colors.white,
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.arrowAltCircleDown,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
            label: "Despesa",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Colors.white,
            labelBackgroundColor: Colors.white,
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.exchangeAlt,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
            label: "Transferência",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Colors.white,
            labelBackgroundColor: Colors.white,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

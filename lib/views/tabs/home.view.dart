import 'package:boxapp/utils/spinner.utils.dart';
import 'package:boxapp/utils/treatments/RouteGenerator.dart';
import 'package:boxapp/widgets/account-balance.widget.dart';
import 'package:boxapp/widgets/box-goals.widgets.dart';
import 'package:boxapp/widgets/box-bank-accounts.widgets.dart';
import 'package:boxapp/widgets/monthly-balance.widget.dart';
import 'package:boxapp/widgets/header-home.widgets.dart';
import 'package:boxapp/widgets/latest-orders.widget.dart';
import 'package:boxapp/widgets/section-options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController _searchController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderHome(),
            OptionsSection(),
            MonthlyBalance(),
            BankAccounts(),
            BoxGoals(),
            AccountBalance(),
            LatestOrders(),
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
              FontAwesomeIcons.cubes,
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

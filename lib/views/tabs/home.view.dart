import 'package:boxapp/utils/spinner.utils.dart';
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
    // TODO: implement initState

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white, //Color(0xff4f78fc),
        statusBarBrightness: Brightness.light, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));

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
            BankAccounts(),
            ExpensesByCategory(),
            BoxFlexPoints(),
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
        //overlayColor: Colors.black,
        //overlayOpacity: 0.7,
        shape: CircleBorder(),
        elevation: 4,
        onOpen: () => print("Aberto"),
        onClose: () => print("Fechado"),
        children: [
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.cubes,
              color: Colors.white,
              size: 20,
            ),
            label: "Venda",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Theme.of(context).primaryColor,
            labelBackgroundColor: Theme.of(context).primaryColor,
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.stickyNote,
              color: Colors.white,
              size: 20,
            ),
            label: "Orçamento",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Theme.of(context).primaryColor,
            labelBackgroundColor: Theme.of(context).primaryColor,
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.arrowAltCircleUp,
              color: Colors.white,
              size: 20,
            ),
            label: "Receita",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Colors.green.withOpacity(0.8),
            labelBackgroundColor: Colors.green.withOpacity(0.8),
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.arrowAltCircleDown,
              color: Colors.white,
              size: 20,
            ),
            label: "Despesa",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Colors.red.withOpacity(0.8),
            labelBackgroundColor: Colors.red.withOpacity(0.8),
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.exchangeAlt,
              color: Colors.white,
              size: 20,
            ),
            label: "Transferência",
            labelStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    //letterSpacing: .0,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.6),
            labelBackgroundColor:
                Theme.of(context).primaryColor.withOpacity(0.6),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

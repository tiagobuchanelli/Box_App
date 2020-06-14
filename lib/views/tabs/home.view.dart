import 'package:boxapp/widgets/account-balance.widget.dart';
import 'package:boxapp/widgets/box-flex-points.widgets.dart';
import 'package:boxapp/widgets/box-notes.widgets.dart';
import 'package:boxapp/widgets/header-home.widgets.dart';
import 'package:boxapp/widgets/latest-orders.widget.dart';
import 'package:boxapp/widgets/section-options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        statusBarColor: Color(0xff4f78fc),
        statusBarBrightness: Brightness.dark, //
        statusBarIconBrightness: Brightness.light // status bar color
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
            //BoxFlexPoints(),
            AccountBalance(),
            BoxNotes(),
            LatestOrders(),
          ],
        ),
      ),
    );
  }
}

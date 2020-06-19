import 'package:boxapp/utils/appBarBase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SalesReport extends StatefulWidget {
  @override
  _SalesReportState createState() => _SalesReportState();
}

class _SalesReportState extends State<SalesReport> {
  /*@override
  void initState() {
    // TODO: implement initState

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white, //Color(0xff4f78fc),
        statusBarBrightness: Brightness.light, //
        statusBarIconBrightness: Brightness.dark // status bar color
        ));

    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
        title: "Vendas",
      ),
    );
  }
}

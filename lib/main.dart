import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/utils/treatments/RouteGenerator.dart';
import 'package:boxapp/views/tabs-page.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final ThemeData temaPadrao = ThemeData(
    //primaryColor:
    primaryColor: Color(0xff2196F3), //Color(0xff00A6FF),
    accentColor: Colors.blueAccent //Color(0xff25D366),
    );

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, //Color(0xff4f78fc),
      statusBarBrightness: Brightness.light, //
      statusBarIconBrightness: Brightness.dark // status bar color
      ));

  // This widget is throot of your application.

  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
    theme: AppTheme(),
    home: TabsPageView(),
  ));
}

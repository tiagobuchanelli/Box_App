import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  //final double height;
  final Color backgroundColor;
  final String title;
  final AppBar appBar;
  final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar(
      {Key key, this.title, this.appBar, this.widgets, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        textAlign: TextAlign.left,
        style: AppTheme().textTheme.title,
      ),
      backgroundColor: backgroundColor,
      actions: widgets,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}

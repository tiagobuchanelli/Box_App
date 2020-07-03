import 'package:boxapp/themes/app.theme.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  //final double height;
  final Color backgroundColor;
  final String title;
  final AppBar appBar;
  final List<Widget> widgets;
  final Widget widgetL;

  /// you can add more fields that meet your needs

  const BaseAppBar(
      {Key key,
      this.title,
      this.appBar,
      this.widgets,
      this.backgroundColor,
      this.widgetL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        textAlign: TextAlign.left,
        style: AppTheme().textTheme.headline6,
      ),
      backgroundColor: backgroundColor,
      actions: widgets,
      leading: widgetL,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}

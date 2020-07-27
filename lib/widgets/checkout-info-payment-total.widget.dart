import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/utils/treatments/RouteGenerator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoTotalPayment extends StatelessWidget {
  String route;

  InfoTotalPayment(this.route);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        border: Border.all(width: 0, color: Colors.grey[300]),
        /*boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],*/
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 0,
                  top: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "TOTAL",
                      style: AppTheme().textTheme.display4.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      "R\$4250",
                      style: AppTheme().textTheme.display4.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 40,
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 0, color: Colors.transparent),
                  ),
                  child: Icon(
                    FontAwesomeIcons.percentage,
                    color: Colors.black87,
                    size: 18,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 40,
                //width: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                margin: EdgeInsets.only(
                  right: 0,
                ),
                child: FlatButton(
                  child: Text(
                    route == "shoppingCart" ? "CHECKOUT" : "FINALIZAR",
                    style: AppTheme().textTheme.display4.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  onPressed: () {
                    route == "shoppingCart"
                        ? Navigator.pushNamed(
                            context, RouteGenerator.shoppingCheckout)
                        : Navigator.pushNamed(
                            context,
                            RouteGenerator
                                .shoppingCheckout); //aqui na nultima colocar tela de resumo
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

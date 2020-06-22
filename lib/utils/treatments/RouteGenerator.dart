import 'package:boxapp/views/sales-report.view.dart';
import 'package:boxapp/views/shopping-cart-checkout.view.dart';
import 'package:boxapp/views/tabs-page.view.dart';
import 'package:boxapp/views/tabs/home.view.dart';
import 'package:boxapp/views/shopping-cart.view.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String home = "/home";
  static const String salesReport = "/salReport";
  static const String shoppingCart = "/shoppingCart";
  static const String shoppingCheckout = "/shoppingCheckout";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => TabsPageView());
      case home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case salesReport:
        return MaterialPageRoute(builder: (_) => SalesReport());
      case shoppingCart:
        return MaterialPageRoute(builder: (_) => ShoppingCartView());
      case shoppingCheckout:
        return MaterialPageRoute(builder: (_) => CheckoutShoppingCart());

      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada!"),
        ),
        body: Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}

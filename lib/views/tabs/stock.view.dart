import 'package:boxapp/store/database-stocks.store.dart';
import 'package:boxapp/themes/app.theme.dart';
import 'package:boxapp/utils/appBarBase.dart';
import 'package:boxapp/widgets/category-list.widget.dart';
import 'package:boxapp/widgets/section-page-stocks.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StockView extends StatefulWidget {
  @override
  _StockViewState createState() => _StockViewState();
}

class _StockViewState extends State<StockView> {
  TextEditingController _searchController = new TextEditingController();

  final List<String> imgList = [
    'https://static.paodeacucar.com/img/uploads/1/600/654600.jpg',
    'https://s3.amazonaws.com/relacionamento.paodeacucar.com.br/PaoDeAcucar/2020/05/11/2020_05_07_vinhostritavinhos_sli.jpg',
    'https://static.paodeacucar.com/img/uploads/1/488/654488.jpg',
  ];

  bool test = true;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        backgroundColor: Colors.white,
        title: "Produtos",
        widgets: <Widget>[
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                FontAwesomeIcons.search,
                color: Colors.black54,
                size: 20,
              ),
            ),
            onTap: () {
              test = false;
              print(test);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0, color: Colors.white),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: Container(
                    height: 45,
                    child: TextField(
                      enableInteractiveSelection: false,
                      focusNode: new FocusNode(),
                      showCursor: false,
                      controller: _searchController,
                      autofocus: false,
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[500],
                        ),
                        filled: true,
                        fillColor: Colors.grey[200], //Color(0xffF2F3F4), //
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.grey[200], width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.grey[200], width: 2.0),
                        ),
                        hintText: 'Pesquise por marca, nome',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 16)),
                      ),
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                      },
                    ),
                  ),
                ),
              ),*/
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 100,
              child: CategoryList(),
            ),
            SizedBox(
              height: 15,
              child: Container(
                color: Colors.grey[100],
              ),
            ),
            SectionPageStocks('Promoções', listaCatPromo),
            Container(
              height: 10,
              color: Colors.grey[100],
            ),
            SectionPageStocks('Suspensão', listaCatSuspensao),
            Container(
              height: 10,
              color: Colors.grey[100],
            ),
            SectionPageStocks('Freios', listaCatFreios),
            Container(
              height: 10,
              color: Colors.grey[100],
            ),
            SectionPageStocks('Motor', listaCatMotor),
            Container(
              height: 10,
              color: Colors.grey[100],
            ),
          ],
        ),
      ),
      bottomNavigationBar: test
          ? Container(
              height: 60,
              color: AppTheme().primaryColor,
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Carrinho",
                      style: AppTheme()
                          .textTheme
                          .headline1
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "R\$ 90,00",
                      style: AppTheme().textTheme.headline1.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                onPressed: () {
                  print("Clicado em ver carrinho");
                },
              ),
            )
          : null,
    );
  }
}

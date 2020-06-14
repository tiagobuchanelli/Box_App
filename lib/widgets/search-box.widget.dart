import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = new TextEditingController();

    final List<String> imgList = [
      'https://static.paodeacucar.com/img/uploads/1/600/654600.jpg',
      'https://s3.amazonaws.com/relacionamento.paodeacucar.com.br/PaoDeAcucar/2020/05/11/2020_05_07_vinhostritavinhos_sli.jpg',
      'https://static.paodeacucar.com/img/uploads/1/488/654488.jpg',
    ];

    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            border: Border.all(width: 0, color: Theme.of(context).primaryColor),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 5),
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
                      borderSide:
                          BorderSide(color: Colors.grey[200], width: 2.0)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey[200], width: 2.0),
                  ),
                  hintText: 'Pesquise por marca, nome',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
              ),
            ),
          ),
        ),
        Container(
            height: 20,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              border:
                  Border.all(width: 0, color: Theme.of(context).primaryColor),
            )),
        Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                        width: 0, color: Theme.of(context).primaryColor),
                  ),
                  height: 130,
                ),
                Container(
                  color: Colors.grey[100],
                  height: 90,
                )
              ],
            ),
            Positioned(
              child: Column(
                children: <Widget>[
                  GFCarousel(
                    autoPlay: true,
                    pagination: true,
                    height: 200,
                    viewportFraction: 1.0,
                    items: imgList.map(
                      (i) {
                        return Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2.0,
                              color: Colors.white.withOpacity(0.1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            child: Image.network(
                              i,
                              fit: BoxFit.cover,
                              width: 1000.0,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onPageChanged: (index) {
                      setState(() {
                        index;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/country.dart';
import 'package:provider_example/providers/home-provider.dart';
import 'package:provider_example/services/country-service.dart';
import 'package:provider_example/widgets/country-item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeProvider _homeProvider = Provider.of<HomeProvider>(context);
    _homeProvider.initializeProvider();

    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2.0))),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'The following countries are order alphabetically...',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _homeProvider.countries.length,
                  itemBuilder: (BuildContext buildContext, int index) {
                    return CountryItem(
                        index,
                        _homeProvider.countries[index]);
                  }),
            ),
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(5.0),
                    child: Text('Last checked country was: ',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                Container(padding: EdgeInsets.all(10.0), child: Text(_homeProvider.lastCheckedCountry)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Write something cool: ',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
                Container(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    decoration: BoxDecoration(border: Border.all()),
                    child: TextField())
              ],
            )
          ],
        )));
  }
}

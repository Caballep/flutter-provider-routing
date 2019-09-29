import 'package:flutter/material.dart';
import 'package:provider_example/models/country.dart';

class CountryDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountryDetailsPageArguments fromHomePageArgs =
        ModalRoute.of(context).settings.arguments;

    double screenWidth = MediaQuery.of(context).size.width,
        flagWidth = screenWidth * 0.9,
        flagPaddingTop = screenWidth * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text("Country Details"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(top: flagPaddingTop),
              width: flagWidth,
              child: Image.network(fromHomePageArgs.country.flagImageUrl),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: flagPaddingTop),
              width: flagWidth,
              child: Text(
                fromHomePageArgs.country.name,
                style: TextStyle(fontSize: 50.0),
              )),
          Container(
              padding: EdgeInsets.only(top: flagPaddingTop, bottom: 15.0),
              width: flagWidth,
              child: Text(
                fromHomePageArgs.country.description,
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              )),
          Divider(),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Leave a friendly commet: ',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 15.0),
            child: Column(children: <Widget>[
              TextField(),
              Align(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                  color: Colors.lightBlue,
                  child: Text('Submit'),
                  onPressed: () => {},
                ),
              )
            ]),
          )
        ],
      )),
    );
  }
}

class CountryDetailsPageArguments {
  Country country;

  CountryDetailsPageArguments(this.country);
}
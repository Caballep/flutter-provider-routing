import 'package:flutter/material.dart';
import 'package:provider_example/models/country.dart';

class CountryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountryDetailsArguments fromHomePageArgs =
        ModalRoute.of(context).settings.arguments;

    double screenWidth = MediaQuery.of(context).size.width,
        flagWidth = screenWidth * 0.9,
        flagPaddingTop = screenWidth * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text("Country Details"),
      ),
      body: Container(
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
          Center(
            child: Container(
              padding: EdgeInsets.only(top: flagPaddingTop),
              width: flagWidth,
              child: Text(
                fromHomePageArgs.country.name,
                style: TextStyle(
                  fontSize: 50.0
                ),
              )
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: flagPaddingTop),
              width: flagWidth,
              child: Text(
                fromHomePageArgs.country.description,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue
                ),
              )
            ),
            Expanded(
              child: Container(
                child: Text('Leave a commet: '),
              ),
            )
        ],
      )),
    );
  }
}

class CountryDetailsArguments {
  Country country;

  CountryDetailsArguments(this.country);
}

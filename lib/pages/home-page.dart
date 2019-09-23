import 'package:flutter/material.dart';
import 'package:provider_example/models/country.dart';
import 'package:provider_example/services/country-service.dart';
import 'package:provider_example/widgets/country-item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CountryService countryService = CountryService();
    List<Country> countries = countryService.getCountries();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'The following countries are order alphabetically',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: countries.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return CountryItem(countries[index].name, countries[index].flagImageUrl);
                }),
            ),
          ],
        )
      )
    );
  }
}

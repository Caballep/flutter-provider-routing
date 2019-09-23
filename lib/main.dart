import 'package:flutter/material.dart';
import 'package:provider_example/pages/home-page.dart';
import 'package:provider_example/pages/country-details.dart';
import 'package:provider_example/pages/routes.dart';


void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Provider and Routes',
    initialRoute: Routes.home,
    routes: {
      Routes.home: (context) => HomePage(),
      Routes.countryDetails: (context) => CountryDetails(),
    },
  );
  }
}
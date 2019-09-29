import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/pages/home-page.dart';
import 'package:provider_example/pages/country-details-page.dart';
import 'package:provider_example/pages/routes.dart';
import 'package:provider_example/providers/home-provider.dart';


void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => HomeProvider(),)
      ],
          child: MaterialApp(
      title: 'Provider and Routes',
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => HomePage(),
        Routes.countryDetails: (context) => CountryDetailsPage(),
      },
  ),
    );
  }
}
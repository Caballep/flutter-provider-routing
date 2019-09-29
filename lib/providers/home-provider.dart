import 'package:flutter/material.dart';
import 'package:provider_example/models/country.dart';

class HomeProvider extends ChangeNotifier {
  String _lastCheckedCountry;
  List<Country> _countries;

  get lastCheckedCountry => _lastCheckedCountry;
  set lastCheckedCountry(String lastCheckedCountry) {
    this._lastCheckedCountry = lastCheckedCountry;
    notifyListeners();
  }

  get countries => _countries;
  set countries(List<Country> countries) {
    this._countries = countries;
    notifyListeners();
  }
}
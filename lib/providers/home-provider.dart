import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider_example/models/country.dart';
import 'package:provider_example/services/country-service.dart';

class HomeProvider extends ChangeNotifier {
  bool _isFirstTimeHomePageLoads = true;
  String _lastCheckedCountry = 'None';
  List<Country> _countries;

  void initializeProvider() {
    isFirstTimeHomePageLoads = false;
    _countries = CountryService().getCountries();
  }

  get isFirstTimeHomePageLoads => _isFirstTimeHomePageLoads;
  set isFirstTimeHomePageLoads(bool isFirstTimeHomePageLoads) {
    this._isFirstTimeHomePageLoads = isFirstTimeHomePageLoads;
    notifyListeners();
  }

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
  void setCountry(int index, Country country) {
    this.countries[index] = country;

    for(Country country in countries) {
      log(country.likeDislike.toString());
    }
    notifyListeners();
  }
}
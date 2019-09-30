import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/country.dart';
import 'package:provider_example/pages/country-details-page.dart';
import 'package:provider_example/pages/routes.dart';
import 'package:provider_example/providers/home-provider.dart';

class CountryItem extends StatelessWidget {
  final String _wlog = 'CountryItem';
  int _index;
  Country _country;
  CountryItem(this._index, this._country);

  @override
  Widget build(BuildContext context) {
    HomeProvider _homeProvider = Provider.of<HomeProvider>(context);

    double screenWidth = MediaQuery.of(context).size.width,
        countryItemHeight = 80.0,
        countryItemWidth = screenWidth,
        countryFlagHeight = 90.0,
        countryFlagWidth = 60.0,
        countryItemFontSize = 30,
        likeDislikeButtonSize = 40,
        countryTextWidth =
        screenWidth - (countryFlagWidth + (likeDislikeButtonSize * 3));
        
    Color likeColor, dislikeColor;

    if(_country.likeDislike == 0) {
      likeColor = Colors.grey;
      dislikeColor = Colors.grey;
    }

    if(_country.likeDislike == 1) {
      likeColor = Colors.green;
      dislikeColor = Colors.grey;
    }

    if(_country.likeDislike == 2) {
      likeColor = Colors.grey;
      dislikeColor = Colors.red;
    }

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.countryDetails,
            arguments: CountryDetailsPageArguments(_country));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        height: countryItemHeight,
        width: countryItemWidth,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0),
              width: countryFlagWidth,
              height: countryFlagHeight,
              child: Image.network(_country.flagImageUrl),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              width: countryTextWidth,
              child: Text(
                _country.name,
                style: TextStyle(fontSize: countryItemFontSize),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => {
                log('$_wlog thumbsUp Tapped'),
                _homeProvider.setCountry(_index, 
                  Country(
                    _country.name,
                    _country.description,
                    _country.flagImageUrl,
                    1
                  )
                )
              },
              child: Icon(
                Icons.thumb_up,
                size: likeDislikeButtonSize,
                color: likeColor,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => {
                log('$_wlog thumbsDown Tapped'),
                _homeProvider.setCountry(_index, 
                  Country(
                    _country.name,
                    _country.description,
                    _country.flagImageUrl,
                    2
                  )
                )
              },
              child: Icon(
                Icons.thumb_down,
                size: likeDislikeButtonSize,
                color: dislikeColor,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

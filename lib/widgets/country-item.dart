import 'package:flutter/material.dart';
import 'package:provider_example/models/country.dart';
import 'package:provider_example/pages/country-details-page.dart';
import 'package:provider_example/pages/routes.dart';

class CountryItem extends StatelessWidget {
  Country _country;
  CountryItem(this._country);

  @override
  Widget build(BuildContext context) {
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
            GestureDetector(
              onTap: () => {},
              child: IconButton(
                iconSize: likeDislikeButtonSize,
                icon: Icon(Icons.thumb_up),
                color: likeColor,
              ),
            ),
            GestureDetector(
              onTap: () => {},
              child: IconButton(
                iconSize: likeDislikeButtonSize,
                icon: Icon(Icons.thumb_down),
                color: dislikeColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

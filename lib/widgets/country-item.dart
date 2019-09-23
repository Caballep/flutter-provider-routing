import 'package:flutter/material.dart';
import 'package:provider_example/pages/routes.dart';

class CountryItem extends StatelessWidget {
  final String _countryName, _countryFlagUrl;
  CountryItem(this._countryName, this._countryFlagUrl);

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

    return InkWell(
      onTap: () { Navigator.pushNamed(context, Routes.countryDetails);},
      child: Container(
        height: countryItemHeight,
        width: countryItemWidth,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0),
              width: countryFlagWidth,
              height: countryFlagHeight,
              child: Image.network(_countryFlagUrl),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              width: countryTextWidth,
              child: Text(
                _countryName,
                style: TextStyle(fontSize: countryItemFontSize),
              ),
            ),
            GestureDetector(
              onTap: () => {},
              child: IconButton(
              iconSize: likeDislikeButtonSize,
              icon: Icon(Icons.thumb_up),
              color: Colors.grey,
            ),
            ) ,
            
            GestureDetector(
              onTap: () => {},
              child: IconButton(
              iconSize: likeDislikeButtonSize,
              icon: Icon(Icons.thumb_down),
              color: Colors.grey,
            ),
            )
          ],
        ),
      ),
    );
  }
}

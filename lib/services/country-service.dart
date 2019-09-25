import 'package:provider_example/models/country.dart';

class CountryService {
  List<Country> getCountries() {
    List<Country> countries = List<Country>();
    countries
    ..add(
      Country('China', 
      'Here resides the magical Aliexpress from where you can get tons of awesome stuff online... price/quality you can get from here is just awesome.', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/CH-flag.gif'),
    )
    ..add(
      Country('India', 
      'Population is measured in Engineers per square meter, without India the world flavores would be pretty much tasteless.', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/IN-flag.gif'),
    )
    ..add(
      Country('Mexico', 
      'The land of true tacos AYAYAYAYAI... some people may say that Mexico is not part of North America, but it is!', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/MX-flag.gif'),
    )
    ..add(
      Country('USA', 
      'Diversity at its best!, the land of freedom it is said... currently abducted by a pompadour carrot.', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/US-flag.gif'),
    );
    return countries;
  }
}

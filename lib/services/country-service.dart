import 'package:provider_example/models/country.dart';

class CountryService {
  List<Country> getCountries() {
    List<Country> countries = List<Country>();
    countries
    ..add(
      Country('China', 
      'Here resides the magical Aliexpress from where you can get tons of awesome stuff online... price/quality you can get from here is just awesome.', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/CH-flag.gif',
      0),
    )
    ..add(
      Country('India', 
      'Population is measured in Engineers per square meter, without India the world flavores would be pretty much tasteless.', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/IN-flag.gif',
      1),
    )
    ..add(
      Country('Mexico', 
      'The land of true tacos AYAYAYAYAI... some people may say that Mexico is not part of North America, but it is!', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/MX-flag.gif',
      0),
    )
    ..add(
      Country('USA', 
      'Diversity at its best!, the land of freedom it is said... currently abducted by a pompadour carrot.', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/US-flag.gif',
      2),
    )
    ..add(
      Country('France', 
      'It was once saved from the terrorist... thank you so much American Team!.', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/FR-flag.gif',
      0),
    )
    ..add(
      Country('Italy', 
      'Mexican flag is not a copy!, they dont even have a cool eagle!', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/IT-flag.gif',
      0),
    )
    ..add(
      Country('Canada', 
      'Some may say is the hat of America... here people fight with bears to survive when they become 5 years old, only the ones that are worthy live.', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/CA-flag.gif',
      0),
    );
    
    return countries;
  }
}

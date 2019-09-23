import 'package:provider_example/models/country.dart';

class CountryService {
  List<Country> getCountries() {
    List<Country> countries = List<Country>();
    countries
    ..add(
      Country('China', 'Here resides the magical Aliexpress', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/CH-flag.gif'),
    )
    ..add(
      Country('India', 'Population is measured in Engineers per square meter', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/IN-flag.gif'),
    )
    ..add(
      Country('Mexico', 'The land of true tacos... AYAYAYAYAI', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/MX-flag.gif'),
    )
    ..add(
      Country('USA', 'Diversity at its best!', 
      'https://www.cia.gov/library/publications/the-world-factbook/attachments/flags/US-flag.gif'),
    );
    return countries;
  }
}

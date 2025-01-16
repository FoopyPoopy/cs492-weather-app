import './forecast.dart' as forecast;

Future<void> main() async {
  // testing with Bend, OR coordinates
  double lat = 44.05;
  double lon = -121.31;

  Map<String, List<double>> cities = {
    'Bend, OR': [44.05, -121.31], // Bend, OR
    'Seattle, WA': [47.6061, -122.3328], // Seattle, WA
    'San Jose, CA': [37.3387, -121.8853], // San Jose, CA
    'San Diego, CA': [32.7157, -117.1611], // San Diego, CA
    'Honolulu, HI': [21.3099, -157.8581], // Honolulu, HI
    'Bloomington, MN': [44.8408, -93.2983] // Bloomington, MN
  };

  for (String city in cities.keys) {
    List<double>? coords = cities[city];
    double lat = coords![0];
    double lon = coords[1];
    List<forecast.Forecast> forecasts =
        await forecast.getForecastFromPoints(lat, lon);
    List<forecast.Forecast> forecastsHourly =
        await forecast.getForecastHourlyFromPoints(lat, lon);
  }

  // TODO: Seach for latitutes and longitudes of 5 cities in the US on the internet
  // Create a for loop that will generate forecasts arrays for each city
  // TODO: create forecasts and forecastsHourly both of type List<forecast.Forecast>
}

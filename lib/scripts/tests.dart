import 'forecast.dart' as forecast;
import 'location.dart' as location;

// void main() async {
//   testForecast();
// }

void testLocation() async {
  List<Map<String, String>> locations = [
    {"city": "Bend", "state": "OR", "zip": "97702"}, // Bend, OR
    {"city": "Seattle", "state": "WA", "zip": "98102"}, // Seattle, WA
    {"city": "San Jose", "state": "CA", "zip": "95123"}, // San Jose, CA
    {"city": "San Diego", "state": "CA", "zip": "92109"}, // San Diego, CA
    {"city": "Honolulu", "state": "HI", "zip": "96795"}, // Honolulu, HI
    {"city": "Bloomington", "state": "MN", "zip": "55122"} // Bloomington, MN
  ];

  // TODO: Create a list of Map<String, String>
  // Add several (at least 5) city, state, zip Map<String, String> to the list
  // iterate through the list, calling location.getLocationFromAddress function for each iteration
  // passing in the city, state, and zip.
  // Debug with a breakpoint after the return (you can use a placeholder like print("test") for your breakpoint)
  // Check to ensure each location returns as expected through debugging.
  List<Future<location.Location?>> locs = [];
  for (Map<String, String> loc in locations) {
    locs.add(location.getLocationFromAddress(loc["city"]!, loc["state"]!, loc["zip"]!));
  }
  print("this sucks");
}

void testForecast() async {
// testing with Bend, OR coordinates
  // double lat = 44.05;
  // double lon = -121.31;
  List<List<double>> coords = [
    [44.05, -121.31],
    [40.71, -74.006],
    [41.878, -87.629],
    [25.7617, -80.1918],
    [35.0844, -106.65]
  ];

  for (List<double> coord in coords) {
    List<forecast.Forecast> forecasts = await forecast.getForecastFromPoints(coord[0], coord[1]);
    List<forecast.Forecast> forecastsHourly =
        await forecast.getForecastHourlyFromPoints(coord[0], coord[1]);
  }
}

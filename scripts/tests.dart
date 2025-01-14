import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main() async {
  String pointsUrl = "https://api.weather.gov/points/44.058,-121.31";
  Map<String, dynamic> pointsJsonData = await getJsonFromUrl(pointsUrl);

  String forecastUrl = pointsJsonData["properties"]["forecast"];
  String forecastHourlyUrl = pointsJsonData["properties"]["forecastHourly"];

  Map<String, dynamic> forecastJsonData = await getJsonFromUrl(forecastUrl);
  Map<String, dynamic> forecastHourlyJsonData =
      await getJsonFromUrl(forecastHourlyUrl);

  processForecasts(forecastJsonData["properties"]["periods"]);
  processForecasts(forecastHourlyJsonData["properties"]["periods"]);

  return;
}

Future<Map<String, dynamic>> getJsonFromUrl(String url) async {
  http.Response r = await http.get(Uri.parse(url));
  return convert.jsonDecode(r.body);
}

void processForecasts(List<dynamic> forecasts) {
  for (var forecast in forecasts) {
    processForecast(forecast);
  }
  // TODO: pass the array of forcasts in from main
  // For loop through the forecasts and process each forecast with the
  // processForecast function below
}

void processForecast(Map<String, dynamic> forecast) {
  int bidailyTemperature = forecast["temperature"];
  String bidailyShortForecast = forecast["shortForecast"];
  String bidailydetailedForecast = forecast["detailedForecast"];
  // if (forecast["dewpoint"] != null) {
  //   int dewpoint = forecast["dewpoint"]["value"];
  // }
  // TODO: Pass a forecast entry (either hourly or bidaily), and extract
  // The proper values that will be useful. i.e. temperature, shortForecast, longForecast
  // for now, don't return anything, just assign values for each
  // i.e. String shortForcast = "";
}

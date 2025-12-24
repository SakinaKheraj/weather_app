import 'package:http/http.dart' as http;
import 'package:weather_app/env.dart';

class WeatherDataProvider {
  Future<String> getCurrentWeather(String city) async {
    try {
      final res = await http.get(Uri.parse(
      'https://api.openweathermap.org/data/2.5/forecast?q=$city&APPID=$openWeatherAPIKey'
        ),
      );
      return res.body;

    } catch(e) {
      throw e.toString();
    }
  }
}

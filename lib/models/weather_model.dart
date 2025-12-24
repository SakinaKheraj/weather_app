// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'hourly_forecast.dart';

class WeatherModel {
  final double currentTemp;
  final String currentSky;
  final double currentPressure;
  final double currentHumidity;
  final double currentWindSpeed;
  final List<HourlyForecast> hourlyForecasts;

  WeatherModel({
    required this.currentTemp,
    required this.currentSky,
    required this.currentPressure,
    required this.currentHumidity,
    required this.currentWindSpeed,
    required this.hourlyForecasts,
  });

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    final current = map['list'][0];

    final hourly = (map['list'] as List)
        .skip(1)
        .take(5)
        .map((e) => HourlyForecast.fromMap(e))
        .toList();

    return WeatherModel(
      currentTemp: current['main']['temp'].toDouble(),
      currentSky: current['weather'][0]['main'],
      currentPressure: current['main']['pressure'].toDouble(),
      currentHumidity: current['main']['humidity'].toDouble(),
      currentWindSpeed: current['wind']['speed'].toDouble(),
      hourlyForecasts: hourly,
    );
  }

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    return {
      'currentTemp': currentTemp,
      'currentSky': currentSky,
      'currentPressure': currentPressure,
      'currentHumidity': currentHumidity,
      'currentWindSpeed': currentWindSpeed,
    };
  }
}

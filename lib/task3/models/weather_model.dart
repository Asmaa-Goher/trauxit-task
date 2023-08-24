class WeatherModel {
  late String description;
  late String location;
  late String country;
  late double temperature;
  late double lat;
  late double long;
  late int clouds;

  WeatherModel.fromJson(Map<String, dynamic> data) {
    description = data["weather"][0]["description"];
    temperature = data["main"]["temp"];
    location = data["name"];
    lat = data["coord"]["lat"];
    long = data["coord"]["lon"];
    clouds = data["clouds"]["all"];
    country = data["sys"]["country"];
  }
}

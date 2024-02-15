import 'package:http/http.dart' as http;
import "dart:convert";
import 'package:weather/models/weatherModel.dart';
import 'package:weather/models/weatherModel.dart';
class Weatherservices{
  weatherModel? weather;
  Future<weatherModel?> getWeather({required cityName})async
  {
      String url="http://api.weatherapi.com/v1/forecast.json?key=28002080bfb84c3d8a8112143230209&q=$cityName&days=5";
      http.Response response = await http.get(Uri.parse(url));
      if(response.statusCode==200)
          {
            Map<String,dynamic>data=jsonDecode(response.body);
            weather=weatherModel.fromjson(data);
          }

      return weather;

  }

  }
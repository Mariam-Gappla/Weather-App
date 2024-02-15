import 'package:flutter/material.dart';

class weatherModel{
  //current
  final String cityName;
  final String date;
  final double avgtemp;
  final double maxtemp;
  final double mintemp;
  final String statusWeather;
  final String img;
  //day1
  final DateTime date1;
  final double maxtemp1;
  final   double mintemp1;
  final String statusWeather1;
  final String img1;
  //day2
  final DateTime date2;
  final double maxtemp2;
  final double mintemp2;
  final String statusWeather2;
  final String img2;
  //day3
  final DateTime date3;
  final double maxtemp3;
  final double mintemp3;
  final String statusWeather3;
  final String img3;
  weatherModel.fromjson(Map<String,dynamic> data):
      cityName=data["location"]["name"],
  date=data['location']['localtime'],
  avgtemp=data['forecast']['forecastday'][0]['day']['avgtemp_c'],
maxtemp=data['forecast']['forecastday'][0]['day']['maxtemp_c'],
mintemp=data['forecast']['forecastday'][0]['day']['mintemp_c'],
statusWeather=data['forecast']['forecastday'][0]['day']['condition']['text'],
img=data['forecast']['forecastday'][0]['day']['condition']['icon'],
date1=DateTime.parse(data['forecast']['forecastday'][1]['date']),
maxtemp1=data['forecast']['forecastday'][1]['day']['maxtemp_c'],
mintemp1=data['forecast']['forecastday'][1]['day']['mintemp_c'],
statusWeather1=data['forecast']['forecastday'][1]['day']['condition']['text'],
img1=data['forecast']['forecastday'][1]['day']['condition']['icon'],
date2=DateTime.parse(data['forecast']['forecastday'][2]['date']),
maxtemp2=data['forecast']['forecastday'][2]['day']['maxtemp_c'],
mintemp2=data['forecast']['forecastday'][2]['day']['mintemp_c'],
statusWeather2=data['forecast']['forecastday'][2]['day']['condition']['text'],
img2=data['forecast']['forecastday'][2]['day']['condition']['icon'],
date3=DateTime.parse(data['forecast']['forecastday'][3]['date']),
maxtemp3=data['forecast']['forecastday'][3]['day']['maxtemp_c'],
mintemp3=data['forecast']['forecastday'][3]['day']['mintemp_c'],
statusWeather3=data['forecast']['forecastday'][3]['day']['condition']['text'],
img3=data['forecast']['forecastday'][3]['day']['condition']['icon'];
 MaterialColor getThemColor(){
  if(statusWeather=='Clear' || statusWeather=='Light Cloud' || statusWeather=='Sunny' )
    {
      return Colors.orange;
    }
  else if(statusWeather=='Sleet' || statusWeather=='Snow' || statusWeather=='Hail' )
    {
      return Colors.blue;
    }
  else if(statusWeather=='Heavy Cloud')
  {
    return Colors.blueGrey;
  }
  else if(statusWeather=='Light Rain' || statusWeather=='Heavy Rain' || statusWeather=='Showers' )
  {
    return Colors.blue;
  }
  else
    {
      return Colors.blueGrey;
    }

}
}
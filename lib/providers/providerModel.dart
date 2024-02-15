import 'package:flutter/widgets.dart';
import 'package:weather/models/weatherModel.dart';

class ProviderModel extends ChangeNotifier{
  weatherModel? weatherdata;
  set weatherData(weatherModel? weather){
    weatherdata=weather;
    notifyListeners();
  }
  weatherModel? get weatherData => weatherdata;


}
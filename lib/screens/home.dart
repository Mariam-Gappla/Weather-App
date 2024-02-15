import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/weatherModel.dart';
import 'package:weather/providers/providerModel.dart';
import 'package:weather/screens/search.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
   weatherModel? weatherdata;
  @override
  Widget build(BuildContext context) {
    weatherdata=Provider.of<ProviderModel>(context).weatherData;
    return Scaffold(
      appBar: AppBar(
        title: Text("weather"),
      ),
      body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient:LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Provider.of<ProviderModel>(context).weatherData!.getThemColor(),
                    Provider.of<ProviderModel>(context).weatherData!.getThemColor()[300]!,
                    Provider.of<ProviderModel>(context).weatherData!.getThemColor()[100]!,

                  ]
                ),
              ),
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text("${weatherdata!.cityName}"),
                Text(weatherdata!.date),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network("http:"+"${weatherdata!.img}"),

                       Container(
                         margin: EdgeInsets.only(right: 15),
                           child: Text("${weatherdata!.avgtemp.toInt()}")),
                    Column(
                      children: [
                        Text("max:${weatherdata!.maxtemp.toInt()}"),
                        Text("min:${weatherdata!.mintemp.toInt()}"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("${weatherdata!.statusWeather}"),
                SizedBox(height: 80,),
                Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.width*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    gradient:LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Provider.of<ProviderModel>(context).weatherData!.getThemColor()[300]!,
                          Provider.of<ProviderModel>(context).weatherData!.getThemColor()[200]!,

                        ]
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("${weatherdata!.date1.day} / ${weatherdata!.date1.month} / ${weatherdata!.date1.year}" ),
                          Image.network("http:"+"${weatherdata!.img1}"),
                          Text("${weatherdata!.maxtemp1.toInt()}/${weatherdata!.mintemp1.toInt()}"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("${weatherdata!.date2.day} / ${weatherdata!.date2.month} / ${weatherdata!.date2.year}"),
                          Image.network("http:"+"${weatherdata!.img2}"),
                          Text("${weatherdata!.maxtemp2.toInt()}/${weatherdata!.mintemp2.toInt()}"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("${weatherdata!.date3.day} / ${weatherdata!.date3.month} / ${weatherdata!.date3.year}"),
                          Image.network("http:"+"${weatherdata!.img3}"),
                          Text(weatherdata!.maxtemp3.toInt().toString()+"/"+ weatherdata!.mintemp3.toInt().toString()),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          )

    );
  }
}

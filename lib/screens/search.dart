

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/weatherModel.dart';
import 'package:weather/providers/providerModel.dart';
import 'package:weather/screens/home.dart';
import 'package:weather/services/weatherService.dart';
class Search extends StatelessWidget {
   Search({Key? key}) : super(key: key);
   GlobalKey <FormState> currentstate=GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Searching a City"),
      ),
      body: SizedBox(
        height: 400,

        child: Center(
            child: SizedBox(
              width: 350,
              height: 55,
              child: Form(
                key: currentstate,
                child: TextFormField(
                  onFieldSubmitted: (cityname)async{
                    Weatherservices services=Weatherservices();
                    weatherModel? weather= await services.getWeather(cityName: cityname);
                    Provider.of<ProviderModel>(context,listen:false).weatherData=weather;
                    if(Provider.of<ProviderModel>(context,listen:false).weatherData != null)
                      {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Home()));
                      }
                    else
                      {
                        Navigator.of(context).pop();
                      }

                  },
                  decoration: InputDecoration(
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      )
                    ),
                    label:Text("City name"),
                    hintText: "search name",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                    ),
              ),
                ),
            ),
          ),


    );
  }
}

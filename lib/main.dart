import 'package:flutter/material.dart';
import 'package:weather/models/weatherModel.dart';
import 'package:weather/providers/providerModel.dart';
import 'package:weather/screens/home.dart';
import 'package:weather/screens/search.dart';
import 'package:provider/provider.dart';
import 'package:weather/screens/start.dart';
void main() {

  runApp(ChangeNotifierProvider(
    create: (context)=> ProviderModel(),
      child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Provider.of<ProviderModel>(context).weatherData==null?Colors.blue:Provider.of<ProviderModel>(context).weatherData!.getThemColor(),
      ),
      home: Scaffold(
        body: Start(),
      ),

    );
  }
}
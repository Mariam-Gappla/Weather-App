import 'package:flutter/material.dart';
import 'package:weather/screens/search.dart';
class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("weather"),
            IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Search();
              }));
            },
                icon: Icon(Icons.search)),
          ],
        ),
      ),
      body: SizedBox(
        width: 370,
        height: 420,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("there is no weather 😊 start ",style: TextStyle(
              fontSize: 20,
            ),),
            Text("searching now 🔍",style: TextStyle(
              fontSize: 20,
            ),),
          ],
        ),
      ),
    );
  }
}

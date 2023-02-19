import 'package:flutter/material.dart';
 
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tide Forecast: Skerries"),
        ),    
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Padding(padding: EdgeInsets.only(top:30)),
            Image.network('https://www.skerriesca.com/wp-content/uploads/2014/04/Tidy-Towns-Trail-map.png'),
            Text("\n \n Predicted Tides: \n -> First High Tide at 09:50am.  \n -> First Low Tide at 03:05am. \n -> Second High Tide at 10:29pm. \n -> Second Low Tide at 03:38pm."),
          ],
        ),
      ),
      ),
    );
  }
}

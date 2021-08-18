import 'package:flutter/material.dart';
import 'package:pelis_app/screens/screens.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelis Rebuenas',
      initialRoute: 'home',
      routes: {
        'home' : ( _ ) => HomeScreen(),
        'details' : ( _ ) => DetailsScreen() 
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.red
        )
      )    
    );
  }
}

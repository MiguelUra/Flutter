
import 'package:flutter/material.dart';
import 'package:pelis_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('pelis largo'),
       elevation: 0,
       actions: [
         IconButton(
            onPressed: (){}, 
           icon: Icon(Icons.search_outlined),
         )
          
              ],),
      body: SingleChildScrollView(
        child: Column(
              children: [
                  //Tarjetas Principales
                  CardSwiper(),
                  //Tarjetas Seciundarias
                   MovieSlider(),

        ],
        
        )
      )

       
      
      
    
    );
  }
}

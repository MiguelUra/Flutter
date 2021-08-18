import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text('Popilares', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,))
        ,),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (  _  , int index) {
            return _MoviePoster();
           },
          ),
        ),

      ],)

    );
  }
}
class _MoviePoster extends StatelessWidget {
  const _MoviePoster({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 130,
              height: 190,
              color: Colors.green ,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                   FadeInImage(
                     placeholder: AssetImage('assets/no-image.jpg'), 
                      image: NetworkImage('https://via.placeholder.com/300x400'),
                      width: 130,
                      height: 200,
                      fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5,),
                      Text('StarWars: El Retorno de la Mama de la mama',
                      maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ) 
              ],),
    );
  }
}
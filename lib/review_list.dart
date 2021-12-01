import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/retrato-joven.jpg","Angel Zamorano","1 review 5 photos","que lindas las fotos"),
        Review("assets/img/retrato-joven.jpg","Daniela Daniela","2 review 5 photos","Que bellas imagenes"),
        Review("assets/img/retrato-joven.jpg","Grupo Amigos","5 review 5 photos","que increible son")
      ],
    );
  }
  
}
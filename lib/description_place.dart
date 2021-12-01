import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  // deben afuera del metodo build las varialbles
  // cuando se pasa los datos directos al widget son como datos en duro, que no ´pueden ser modificados
  // es com    return ;o se define los atributos y se genera el metodo constructor

  String namePlace;
  int stars;
  String descriptionPlace;


  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String descriptionTextDummy = "el texto mas largo del mundo mundial asdfff   sdfasdfdfs  asdf  ffffffffffffffasddddddddddddddddddddddddddddddddddddddddddddddddddawqeraasdffffffffffffffffffffffffffffffaggggggggggggggggggggggggggggggggggggggggggggggggggggdf \n asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child:  Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
        textAlign: TextAlign.left,
      ),
    );

    final stars = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0
         ),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final stars_half = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );

    final stars_border = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin:const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child:   Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato", // se integra la fuente desde el pubspec yaml desde la carpte fonts
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),

        Row(
          children: <Widget>[
            stars,
            stars,
            stars,
            stars_half,
            stars_border
          ],
        )
      ],
    );


    return Column(
      children: <Widget>[
        title_stars,
        description
      ],
    );
  }

}
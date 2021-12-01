

import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/img/retrato-joven.jpg";
  String name = "Angel Zamorano";
  String details = "1 review 5 photos";
  String comment = "blablablablabla";
  //metodo contructor
  Review(this.pathImage,this.name,this.details,this.comment);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
            ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName= Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,  //es para alinear a la izquierda
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
       margin: EdgeInsets.only(
         top: 20.0,
         left: 20.0
       ),
       width: 80.0,
       height: 80.0,
         //AssetImage(pathImage)
       decoration: BoxDecoration(
         shape: BoxShape.circle,
         image:  DecorationImage( // decorar la imagen en el circulo
           fit: BoxFit.cover, // este metodo es para que quede en el centro
           image: AssetImage(pathImage) // se carga la imagen

         )
       ),
     );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );

  }
}
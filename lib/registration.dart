
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Reg extends StatelessWidget {
  const Reg({super.key});


  @override
Widget build(BuildContext context){
  return Scaffold(
    body: Container( 
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/start.jpeg"),
              fit: BoxFit.cover),  
          ),
          padding: EdgeInsets.fromLTRB(25, 100, 25, 0),
          child:  const Column( 
            children: <Widget>[
              Text ("Gunstudy", 
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight:FontWeight.w900,
              fontFamily: 'Inter',)
            ),
            Padding(
              padding: EdgeInsets.only(top: 38.0),
              child: Text ("Бесплатная подготовка к тестированию по безопасному обращению с оружием",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 85.0),
              child: Text("Типовые вопросы экзамена для получения (продления) лицензии на владение оружием актуальны на Май 2024 года",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontFamily: 'Inter'
              ),),
              )
            ]
        )
        
      ),
  );
}}
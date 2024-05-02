import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gunstudy/auth.dart';
import 'package:gunstudy/home.dart';
import 'package:gunstudy/startpage.dart';

class Status extends StatefulWidget{
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}


// Image startImage = Image.asset("assets/start.jpeg");

// Widget blurredImage = BackdropFilter(
//   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//   child: Container(
//     child: startImage,
//     decoration: BoxDecoration(color: Color.fromARGB(255, 45, 77, 53).withOpacity(0.0)),
//   ),
// );

class _StatusState extends State<Status>{
  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: Auth().authStateChanges, 
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Home();
        }else{
          return StartPage();
        }
      });
  }
}
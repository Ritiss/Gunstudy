
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gunstudy/home.dart';
import 'package:gunstudy/login.dart';
import 'package:gunstudy/registration.dart';
import 'package:flutter_svg/flutter_svg.dart'; 

// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

// void main() => runApp(const MyApp());



Image startImage = Image.asset("assets/start.jpeg");

Widget blurredImage = BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
  child: Container(
    child: startImage,
    decoration: BoxDecoration(color: Color.fromARGB(255, 45, 77, 53).withOpacity(0.0)),
  ),
);




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => const StartPage(),
        'login': (context) => Login(),
        'reg':(context) => const Reg(),
        'home':(context) => const Home()
      },
    );
  }
}


class StartPage extends StatelessWidget {
  const StartPage({super.key});


  @override
Widget build(BuildContext context){
  
  return Scaffold(
    body: Container( 
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/start.jpeg"),
              fit: BoxFit.cover), 
              ), 
          child: ClipRRect(
            child: BackdropFilter( 
             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), 
              child: Container( 
                alignment: Alignment.center, 
                color: Color.fromARGB(255, 51, 74, 43).withOpacity(0.5), 
          padding: const EdgeInsets.only(top: 75, left: 25, right: 25),
          child:   Column( 
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 65.0),
              child: Transform.scale(
                scale: 8,
                child: Text ("Gunstudy", 
                textAlign: TextAlign.center,
                            style: TextStyle(
                fontSize: 5,
                fontWeight:FontWeight.bold,
                fontFamily: 'Inter',
                color: Colors.white)
                            ),
              ),),
            Padding(
              padding: EdgeInsets.only(top: 38.0),
              child: SvgPicture.asset(
                'assets/Fineicon.svg',
                ),),
            Padding(
              padding: EdgeInsets.only(top: 38.0),
              child: Text ("Бесплатная подготовка к тестированию по безопасному обращению с оружием",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                fontFamily: 'Inter-Regular',

                color: Colors.white
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35.0),
              child: Text("Типовые вопросы экзамена для получения (продления) лицензии на владение оружием актуальны на Май 2024 года",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter-Regular',
                color: Colors.white
              ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75.0),
                child: TextButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)),
                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 184, 250, 1)),
                  ), onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  }, 
                  child: Text("Войти", 
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                  ) ,),
                ),),
                Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: TextButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ), onPressed: () { 
                    Navigator.pushNamed(context, 'reg');
                   }, child: Text("Зарегистрироваться", 
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                  ) ,),
                ),),
                
            ]
        )
        
      ),
  ))));
  
}}
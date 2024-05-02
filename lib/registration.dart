
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gunstudy/auth.dart';



class Reg extends StatefulWidget{
  const Reg({super.key});

  @override
  State<Reg> createState() => _regPageState();
}
@override
class _regPageState extends State<Reg> {
  
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  Future<void> createUserWithEmailAndPassword(BuildContext context) async {
    try{
      await Auth().createUserWithEmailAndPassword(
        email: _emailController.text,
         password: _passwordController.text,
         );
         Navigator.pushNamed(context, 'home');
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _errorMessage(){
    return Text(errorMessage == '' ? '' : '$errorMessage');
  }

  @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Регистрация"),
    ),
    body: Container(
  padding: EdgeInsets.only(top: 20, left: 25, right: 25),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(90),
  ), 
  child: Column(
    children: <Widget>[
              Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey)
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color.fromARGB(255, 213, 5, 5))
              ),
              labelText: 'Как Вас зовут?', 
              labelStyle: TextStyle(color: Colors.grey)   
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: TextField(
            controller: _emailController,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey)
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color.fromARGB(255, 213, 5, 5))
              ),
              labelText: 'Ваш email',
              labelStyle: TextStyle(color: Colors.grey) 
            ),
          ),
        ),
         Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey)
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color.fromARGB(255, 213, 5, 5))
              ),
                labelText: 'Придумайте пароль',
                labelStyle: TextStyle(color: Colors.grey) 
              ),
            ),
          ),
          _errorMessage(),
          Center(
          child:Padding(
            padding: EdgeInsets.only(top: 40, left: 87, right: 87),
            child:  Text( "Или авторизуйтесь с помощью соц.сетей",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter-Medium',
              color: Color.fromARGB(255, 76, 74, 74)
            ),
          ),
          )
          ),
          Padding(
                  padding: EdgeInsets.only(top: 130, left: 87, right: 87),
                  child: Text("При регистрации вы соглашаетесь с политикой обработки данных.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter-Medium',
                    fontWeight: FontWeight.bold
                  ),
                  )
                ),
                Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: TextButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)),
                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 184, 250, 1)),
                  ), onPressed: () {
                    createUserWithEmailAndPassword(context);
                  
                  }, 
                  child: Text("Зарегистрироваться", 
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                  ) ,),
                ),)
         
    ],),
    ) 
    );
}}
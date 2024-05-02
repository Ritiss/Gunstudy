import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gunstudy/auth.dart';
import 'package:passwordfield/passwordfield.dart';

class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<Login> createState() => _logPageState();
}
@override
class _logPageState extends State<Login> {
  
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  Future<void> signInWithEmailAndPassword(BuildContext context) async {
    try{
      await Auth().signInWithEmailAndPassword(
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
      title: Text("Вход",
      style: TextStyle(
        fontFamily: 'Inter-Black',
        fontWeight: FontWeight.w900
      ),),
    ),
    body: Container(
  padding: EdgeInsets.only(top: 40, left: 25, right: 25),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(90),
  ), 
  child: Column(
    children: <Widget>[
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
              labelText: 'Электронная почта', 
              labelStyle: TextStyle(color: Colors.grey)   
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: PasswordField(
            controller: _passwordController,
                        color: Colors.grey,
            passwordConstraint: r'.*[@$#.*].*',
           passwordDecoration: PasswordDecoration(), 
            hintText: 'Пароль',
            border: PasswordBorder(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(width: 2, color: Color.fromARGB(255, 213, 5, 5)),
              ),
            ),
          ),
        ),
        _errorMessage(),
          Center(
          child:Padding(
            padding: EdgeInsets.only(top: 40, left: 87, right: 87),
            child:  Text( "или",
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
                  padding: EdgeInsets.only(top: 150, left: 87, right: 87),
                  child: Text("",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter-Medium',
                    fontWeight: FontWeight.bold
                  ),
                  )
                ),
                Padding(
                padding: EdgeInsets.only(top: 150.0),
                child: TextButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)),
                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 184, 250, 1)),
                  ), onPressed: () {
                    signInWithEmailAndPassword(context);

                  }, 
                  child: Text("Войти", 
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                  ) ,),
                ),)
         
    ],),
    ) 
    );
}}
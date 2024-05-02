import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Stack(
                children: [
                  SizedBox(
                    child: Image.asset(
                      "assets/start.jpeg",
                      fit: BoxFit.fill,
                    ),
                    height: 200,
                    width: double.infinity,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          const Color(0xFF020C0D).withOpacity(0.8),
                          const Color(0xFF2E3E42).withOpacity(0.7086),
                          const Color(0xFF98B9C3).withOpacity(0.488)
                        ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                  )
                ],
              ),
              Positioned(
                bottom: -55,
                left: 15,
                right: 15,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF323A3D),
                  ),
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  width: 344,
                  height: 202,
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Flexible(
                            child: Column(
                              children: [
                                Text(
                                  "Подготовка к экзамену",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Inter-Black',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Тестирование по всем билетам без ограничений",
                                  style: TextStyle(
                                      fontFamily: 'Inter-Black',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Text("70/137",
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: LinearProgressBar(
                          maxSteps: 137,
                          currentStep: 70,
                          progressColor: Color(0xFFB4D600),
                          backgroundColor: Colors.white,
                          minHeight: 20,
                          progressType: LinearProgressBar.progressTypeLinear,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: TextButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(
                                Size(double.infinity, 45)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Начать тестирование",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -200,
                left: 20,
                right: 15,
                child: TextButton(
                  style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 106,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              const Color(0xFF7EC111),
                              const Color(0xFFD6FE00),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: SvgPicture.asset("assets/exam.svg"),
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Пройти экзамен",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'Inter-Black'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "*10 случайных вопросов, не более 10 минут и 1 ошибки для успешной сдачи",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Inter-Black',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -320,
                left: 20,
                right: 15,
                child: TextButton(
                  style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 106,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: SvgPicture.asset("assets/test.svg"),
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Тест по Избранному",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'Inter-Black'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Решайте вопросы, который вызвали у вас затруднения",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Inter-Black',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "10 вопросов",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Inter-Black',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -440,
                left: 20,
                right: 15,
                child: TextButton(
                  style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    
                    
                    )),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 106,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: SvgPicture.asset("assets/lib.svg"),
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Библиотека",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'Inter-Black'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Полезная информация для тех, кто собирается приобретать оружие ",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Inter-Black',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "6 материалов",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Inter-Black',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -560,
                left: 20,
                right: 15,
                child: TextButton(
                  style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    
                    
                    )),
                  ),
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 106,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: SvgPicture.asset("assets/wallet.svg"),
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "Принимаем благодарность",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'Inter-Black'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Понравилось приложение? Вы можете поддержать разработчиков за их труд, внести любую сумму.",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Inter-Black',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                          
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

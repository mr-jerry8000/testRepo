import 'package:flutter/material.dart';

class DescApp extends StatefulWidget {
  const DescApp({super.key});

  @override
  State<DescApp> createState() => _DescAppState();
}

class _DescAppState extends State<DescApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          primary: true,
          title: Text("About MyBmi"),
          backgroundColor:Color(0xFF346C82),
          foregroundColor: Color(0xFFFFFFFF),
          leading: Transform.scale(
            scale: 0.7,
            child: Image.asset('images/LogoBW.png',
            ),
          ),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Center(
                child: Image.asset('images/Logo.png',
                height: 60,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
              child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("About MyBmi:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("MyBmi is more than just a BMI calculator. It's a powerful tool designed to empower you with insights into your health and fitness levels.")
                  )
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
              child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Key Features:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child:  Padding(
                padding: const EdgeInsets.only(
                    left: 8.0
                ),
                      child: Text("📊 BMI Calculation"),
                  )
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child:  Padding(
                padding: const EdgeInsets.only(
                    left: 8.0
                ),
                      child: Text("🥗 Nutrition Tips"),
                  )
              ),


          //   why?

            Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 4,
                ),
                child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Why MyBmi?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )
                )
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0
                      ),
                      child: Text("MyBmi stands out as an innovative health solution, offering you a deeper understanding of your health beyond just numbers. HealthTech Innovations is committed to helping you make informed choices for a healthier lifestyle.")
                  )
              ),
            ),


            Padding(
              padding: EdgeInsets.only(
                  top: 4
              ),
              child: Center(
                child: Image.asset('images/home.png',
                  height: 80,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 4,
                ),
                child:  Center(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Stay Connected:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                )
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 3.0
                      ),
                      child: Text("📧 Email: support@Mr.luckyy.com\n🌐 Website: www.Dummy.com\n📱 Social: @Mr.luckyyy____")
                  )
              ),
            ),




          //

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Center(
                child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                            left: 55.0,
                            right: 14.0,
                        ),
                        child: Center(child: Text("Download MyBMI now and take the first step towards a healthier and more active you!"))
                    ),
              )
              ),
          ],
        )
    );;
  }
}

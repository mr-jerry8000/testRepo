import 'package:flutter/material.dart';
import 'DescPage.dart';
class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage>  {

  // Initialization of controller
  TextEditingController _height = TextEditingController();
  TextEditingController _weight = TextEditingController();

  double? height ;
  double? weight ;
  String text = "..";


  void calculate(){
    height = height!/100;
    double? bmi = weight!/(height!*height!);
    bmi =  double.parse((bmi).toStringAsFixed(2));
    print(bmi);

    if (bmi < 18.59) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Color(0xFF346C82),
          icon: Image.asset('images/underweight.png',
            height: 120,
          ),
          title: Text('Result: UnderWeight',
            style: TextStyle(
              fontSize: 25,
              color: Colors.yellow
            ),
          ),
          content: Text(""
              "BMI : $bmi\n\n"
              "Recommndation:\n"
              "Try to avoid foods with a lot of added sugar, fat and salt, like cakes, takeaway foods and sugary drinks. You can put on weight by eating small meals frequently throughout the day. Try to snack on healthy, high energy foods like cheese, nuts, milk-based smoothies and dried fruit.",
            style: TextStyle(
              color: Colors.white
            ),
          ),

          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK',
                style: TextStyle(
                  color: Color(0xFF00E3FF)
                ),
              ),
            ),
          ],
        ),
      );
    }

    if (bmi >= 18.5 && bmi < 24.99) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Color(0xFF346C82),
          icon: Image.asset('images/healthy.png',
            height: 120,
          ),
          title: Text('Result: Normal',
            style: TextStyle(
                fontSize: 25,
                color: Color(0xFF5FFF00)
            ),
          ),
          content: Text(""
              "BMI : $bmi\n\n"
              "Recommndation:\n"
            "Maintain body weight by taking moderate to vigorous levels of physical activity, preferably daily. Control fat intake (not more than 30% of daily energy) and replace most saturated fats with unsaturated fats."
              ,style: TextStyle(
                color: Colors.white
            ),
          ),

          actions: <Widget>[

            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK',
                style: TextStyle(
                    color: Color(0xFF00E3FF)
                ),
              ),
            ),
          ],
        ),
      );
    }

    if (bmi >= 25 && bmi < 34.99) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Color(0xFF346C82),
          icon: Image.asset('images/overweight.png',
            height: 120,
          ),
          title: Text('Result: Overweight',
            style: TextStyle(
                fontSize: 25,
                color: Color(0xFF64B677)
            ),
          ),
          content: Text(""
              "BMI : $bmi\n\n"
              "Recommndation:\n"
              "Fruit and vegetables that are raw, steamed or baked."
            "Whole grains, breads, cereal, rice and pasta."
            "Dairy products, such as low-fat or non-fat milk or yogurt, low-fat cottage cheese and low-fat cheese."
            "Protein-rich foods like chicken, turkey, fish, lean meat and legumes, or beans."

            ,style: TextStyle(
                color: Colors.white
            ),
          ),

          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK',
                style: TextStyle(
                    color: Color(0xFF00E3FF)
                ),
              ),
            ),
          ],
        ),
      );
    }
    if (bmi >= 35) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Color(0xFF346C82),
          icon: Image.asset('images/obesity.png',
            height: 120,
          ),
          title: Text('Result: Obesity',
            style: TextStyle(
                fontSize: 25,
                color: Colors.red
            ),
          ),
          content: Text(""
              "BMI : $bmi\n\n"
              "Recommndation:\n"
              "Reducing intake of the less healthy fats and keeping total fat intake to less than 25% of the diet's energy, as well as increasing the proportion of low-energy-dense foods, such as vegetables and fruits (9 to 12 servings/day) and low-fat dairy products (2 to 3 servings/day)."

            ,style: TextStyle(
                color: Colors.white
            ),
          ),

          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK',
                style: TextStyle(
                    color: Color(0xFF00E3FF)
                ),
              ),
            ),
          ],
        ),
      );
    }


    // double? result = (celcius! * 9/5) + 32;
    //
    // result =  double.parse((result).toStringAsFixed(2));
    // setState(() {
    //   var r = "Result: $result℉ ";
    //   text = r.toString();
    //
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          primary: true,

          title: Text("MyBmi"),
          backgroundColor:Color(0xFF346C83),
          foregroundColor: Color(0xFFFFFFFF),
          leading: Transform.scale(
            scale: 0.6,
            child: Image.asset('images/LogoBW.png'),
          ),
          actions: [
            // IconButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>FarenheitToCelcius()));
            // }, icon: Icon(Icons.compare_arrows)),

            IconButton(onPressed: (){
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Color(0xFFC9D7DE),
                  icon: Image.asset('images/Logo.png',
                    height: 60,
                  ),
                  title: Text('About MyBmi'),
                  content: Text("App Name: MyBmi\n\n"
                      "Developer: Nitin Kumawat\n\n"
                      "Developed Date: Aug 8, 2023\n\n"
                      "Description:\n"
                      "MyBmi is your ultimate health companion. Easily calculate your Body Mass Index (BMI) and gain insights into your fitness journey. Whether you're setting goals or monitoring progress, MyBmi is here to support your path to a healthier you"
                      "\n\nVersion: 1.0.0\n"),

                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DescApp())),
                      child: const Text('More Info'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
              tooltip: "About App",
              icon: Icon(
                Icons.info,
                size: 20,

              ),
            )
          ],

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                top: 0,
                bottom: 0
              ),
              child: Center(child: Image.asset('images/meter.png'))
            ),

            Padding(
                padding: EdgeInsets.only(
                    left: 8,
                    right: 8,
                    bottom: 2
                ),
              child: Center(
                  child: Text("BMI Calculator",
                    style: TextStyle(
                      color: Color(0xFF24566B),
                      fontSize: 25
                    ),
                  )
              )
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: 8,
                    right: 8,
                    bottom: 0,
                    top: 0,
                ),
              child: Center(
                  child: Text("Body Mass Index",
                    style: TextStyle(
                      color: Color(0xFF24566B),
                      fontSize: 10
                    ),
                  )
              )
            ),
            
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 8,
                right: 8,
                bottom: 5,
              ),
              child: TextField(
                controller: _height,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.height),
                  suffixText: "cm",
                  suffixStyle: TextStyle(
                    color: Color(0xFFC9D7DE),
                    fontSize: 15
                  ),
                  labelText: 'HEIGHT (cm) ',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      backgroundColor: Color(0xFF789AAC),
                      color: Color(0xFFFFFFFF)
                  ),

                  fillColor: Color(0xFF789AAC),
                  filled: true,

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                        color: Color(0xFF24566B),
                        width: 3.0
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 2.5,
                      )
                  ),

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 8,
                right: 8,
                bottom: 5,
              ),
              child: TextField(
                controller: _weight,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.monitor_weight),
                  suffixText: "Kg",
                  suffixStyle: TextStyle(
                      color: Color(0xFFC9D7DE),
                      fontSize: 15
                  ),
                  labelText: 'Weight (Kg) ',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      backgroundColor: Color(0xFF789AAC),
                      color: Color(0xFFFFFFFF)
                  ),

                  fillColor: Color(0xFF789AAC),
                  filled: true,

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                        color: Color(0xFF24566B),
                        width: 3.0
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          width: 2.5,
                      )
                  ),

                ),
              ),
            ),
            Padding(

                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Center(
                  child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFF24566B),
                          shadowColor: Color(0xFF536D79),
                        ),
                      onPressed: (){
                    height = double.parse(_height.text.toString());
                    weight = double.parse(_weight.text.toString());
                    calculate();

                  },
                      child: Text("Calculate BMI")
                  ),
                )
            ),

          ],
        )
    );
  }
}
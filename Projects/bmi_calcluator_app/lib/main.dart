import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'BMI Calculators',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var weightData = TextEditingController();
  var foot = TextEditingController();
  var inches = TextEditingController();
  var result = "";
  var bgColor ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // Center the text on the AppBar
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Container(
        color: bgColor, // Background color
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "BMI",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: weightData,
                  decoration: const InputDecoration(
                    labelText: "Enter your weight (kg):",
                    prefixIcon: Icon(Icons.line_weight_sharp),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: foot,
                  decoration: const InputDecoration(
                    labelText: "Enter your height (Feet):",
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: inches,
                  decoration: const InputDecoration(
                    labelText: "Enter your height (Inches):",
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    var wt = weightData.text.toString();
                    var ft = foot.text.toString();
                    var inc = inches.text.toString();

                    if (wt != "" && ft != "" && inc != "") {
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inc);

                      var totalInch = (iFt * 12) + iInch;
                      var totalCm = totalInch * 2.54;
                      var totalMeter = totalCm / 100;

                      var bmi = iWt / (totalMeter * totalMeter);
                      var msg = "";

                      // You can change the bgColor based on BMI value for example:
                      if (bmi < 18.5) {
                        msg = "Your are UnderWeight";
                        bgColor = Colors.blue; // Underweight
                      } else if (bmi < 25) {
                        msg = "Your are OverWeight";
                        bgColor = Colors.green; // Normal
                      } else if (bmi < 30) {
                        msg = "Your are Healthy";
                        bgColor = Colors.yellow; // Overweight
                      } else {
                        bgColor = Colors.red; // Obese
                      }

                      setState(() {
                        result = "$msg \n Your BMI is:  ${bmi.toStringAsFixed(4)}";

                      });
                    } else {
                      setState(() {
                        result = "Please fill all required fields";
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white, // Button text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12), // Padding
                    shape: RoundedRectangleBorder(
                      // Button shape
                      borderRadius: BorderRadius.circular(20), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 18, // Text size
                      fontWeight: FontWeight.bold, // Text weight
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  result,
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

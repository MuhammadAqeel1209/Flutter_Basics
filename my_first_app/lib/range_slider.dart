import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  // Initial range values
  RangeValues values = const RangeValues(20, 80);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Slider'),
      ),
      body: Center(
        child: RangeSlider(
          values: values,

          labels: RangeLabels(
            values.start.round().toString(),
            values.end.round().toString(),
          ),
          onChanged: (RangeValues newValues) {
            // Ensure the new values are within the defined range
            if (newValues.start < newValues.end) {
              setState(() {
                values = newValues; // Update the state with new values
              });
            }
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyRangeSlider(), 
  ));
}

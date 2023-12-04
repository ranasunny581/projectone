import 'package:flutter/material.dart';

class Modelbarrier extends StatefulWidget {
  const Modelbarrier({super.key});

  @override
  State<Modelbarrier> createState() => _ModelbarrierState();
}

class _ModelbarrierState extends State<Modelbarrier> {
  bool activated = false;
  RangeValues values = RangeValues(0, 1);

  double currval=20;

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Column(
      children: [
        Center(
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  activated = !activated;
                });
              },
              child: Text("Reactivate")),
        ),
        RangeSlider(
            labels: labels,
            values: values,
            divisions: 10,
            activeColor: Colors.pink,
            inactiveColor: Colors.grey,
            onChanged: (newvalue) {
              setState(() {
                values = newvalue;
              });
            }),
        Slider(
            min:0,
            max: 100,
            divisions: 10,
            label: currval.toString(),
            value: currval, onChanged: (newval){
          setState(() {
            currval=newval;
          });
        }),
        if (activated)
          Opacity(
            opacity: .4,
            child: ModalBarrier(
              dismissible: true,
              onDismiss: () {
                setState(() {
                  activated = !activated;
                });
              },
              color: Colors.orangeAccent,
            ),
          )
      ],
    );
  }
}

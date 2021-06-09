import 'package:flutter/material.dart';
import 'package:medinfosys/constants.dart';
import 'package:medinfosys/models/medication.dart';
import 'package:medinfosys/screens/medication/components/medication_list.dart';

class MyMedication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: Stack(children: <Widget>[
          //background
          Container(
            margin: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) => MedicationList(
              itemIndex: index,
              medication: medications[index],
              press: () {},
            ),
            itemCount: medications.length,
          )
        ]),
      )
    ]);
  }
}

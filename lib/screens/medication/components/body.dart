import 'package:flutter/material.dart';
import 'package:medinfosys/components/search_box.dart';
import 'package:medinfosys/constants.dart';
import 'package:medinfosys/models/medication.dart';
import 'package:medinfosys/screens/medication/components/medication_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SearchBox(
        onChanged: (value) {},
      ),
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
            itemBuilder: (context, index) => MedicationCard(
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

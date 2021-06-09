import 'package:flutter/material.dart';
import 'package:medinfosys/constants.dart';
import 'package:medinfosys/screens/medication/components/my_medication.dart';
import 'package:medinfosys/screens/medication/medications_screen.dart';

class MyMedicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('MedicationApp'),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicationScreen()),
                );
              },
            ),
            ListTile(
              title: Text('My Medication'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Set Reminder'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: buildAppBar(),
      body: MyMedication(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('My Medication'),
      centerTitle: false,
      actions: <Widget>[],
    );
  }
}

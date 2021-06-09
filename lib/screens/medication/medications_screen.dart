import 'package:flutter/material.dart';
import 'package:medinfosys/constants.dart';
import 'package:medinfosys/screens/medication/my_medication_screen.dart';
import 'components/body.dart';

class MedicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: Drawer(
        child: ListView(
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyMedicationScreen()),
                );
              },
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
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Dashboard'),
      centerTitle: false,
      actions: <Widget>[],
    );
  }
}

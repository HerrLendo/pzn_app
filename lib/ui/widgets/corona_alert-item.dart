import 'package:flutter/material.dart';

import 'file:///C:/Users/busin/AndroidStudioProjects/pzn_app/lib/ui/screens/corona-virus.dart';

class AlertItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            const ListTile(
              leading: Icon(Icons.info_outline,
                  size: 50, color: Colors.red),
              title: Text('Coronavirus (COVID-19) Pandemie',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Wichtige Informationen',
                  style: TextStyle(
                      fontSize: 15.0
                  )),
            ),
            ButtonBar(
              children: <Widget> [
                FlatButton(
                  child: Text(
                      'Weiterlesen'
                  ),
                  onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CoronaVirus()))},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
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
                  size: 50, color: Colors.blue),
              title: Text('Luca-Paul hallo, Luca-Paul hallo, Luca-Paul hallo, Luca-Paul hallo',
                style: TextStyle(
                  fontSize: 20,
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
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class DevMessageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            const ListTile(
              leading: Icon(Icons.info_outline,
                  size: 50, color: Colors.red),
              title: Text('Achtung',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Diese Seite befindet sich noch im Aufbau!',
                  style: TextStyle(
                      fontSize: 15.0
                  )),
            ),
            ButtonBar(
              children: <Widget> [
              ],
            )
          ],
        ),
      ),
    );
  }
}

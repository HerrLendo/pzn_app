import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.image,
                size: 220,
              ),
            ),
            const ListTile(
              leading: Icon(Icons.info_outline,
              size: 50),
              title: Text('Title',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              subtitle: Text('Subtitle'),
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

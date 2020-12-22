import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class WelcomeItem extends StatelessWidget {
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
              leading: Icon(LineAwesomeIcons.alternate_user,
                  size: 50,
                  color: Colors.green  ),
              title: Text('Willkommen!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Wir begrüßen Sie in der offiziellen App des zfp!',
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

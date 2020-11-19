import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pzn_app/NavDrawer.dart';
import 'package:pzn_app/home_screen.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:pzn_app/hospitals.dart';
import 'package:pzn_app/posts.dart';
import 'package:pzn_app/settings.dart';

import 'corona-virus.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MessageHandler extends StatefulWidget {
  @override
  createState() => _MessageHandlerState();
}

class _MessageHandlerState extends State<MessageHandler> {

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseMessaging _fcm = FirebaseMessaging();

  @override
  void initState() {

    // ...

    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(message['notification']['title']),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
        // TODO optional
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        // TODO optional
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return null;
  }
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_alert, color: Colors.white,),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.verified, color: Colors.green,),
                onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CoronaVirus()))},
              ),
            ],
            title: Text('zfp', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
            centerTitle: true,
            backgroundColor: Colors.grey[900],
            bottom: TabBar(
              indicatorColor: Colors.yellow,
              unselectedLabelColor: Colors.grey[700],
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.home),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.article),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              PostList(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Home extends StatelessWidget {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
    );
  }
}

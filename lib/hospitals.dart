import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: Text(
          "zfp",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
      body: HospitalPage(),
    );
  }
}


class HospitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
            ),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.yellow[700]
              ),
              child: Center(
                  child: Text('Krankenhäuser', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.local_hospital, size: 70, color: Colors.black,),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        child: Text('Wiesloch', style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold)),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                        child: Text('Heidelberger Str. 1 · 69168 Wiesloch', style: TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Webseite', style: TextStyle(color: Colors.black, fontSize: 18)),
                            onPressed: () {}
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.local_hospital, size: 70, color: Colors.black,),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        child: Text('Weinsberg', style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold)),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                        child: Text('Weißenhof 1 · 74189 Weinsberg', style: TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Webseite', style: TextStyle(color: Colors.black, fontSize: 18)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.local_hospital, size: 70, color: Colors.black,),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        child: Text('Winnenden', style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold)),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                        child: Text('Schloßstr. 50 · 71364 Winnenden', style: TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Webseite', style: TextStyle(color: Colors.black, fontSize: 18)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.local_hospital, size: 70, color: Colors.black,),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        child: Text('Calw', style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold)),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                        child: Text('Lützenhardter Hof 1 · 75365 Calw', style: TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Webseite', style: TextStyle(color: Colors.black, fontSize: 18)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
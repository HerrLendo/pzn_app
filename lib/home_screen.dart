import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pzn_app/corona_alert-item.dart';
import 'package:pzn_app/hospitals.dart';
import 'package:pzn_app/pzn_offers.dart';
import 'package:pzn_app/pzn_wiesloch.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 4.0),
          ),
          AlertItem(), //item.dart für Posts wie Bilder etc
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Card(
                color: Colors.grey[900],
                elevation: 5,
                child: InkWell(
                  onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => pzn()))},
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                          child: Center(
                            child: Icon(Icons.place, size: 130, color: Colors.yellow[600],),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0),
                          child: Text('Unser Zentrum', style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Card(
                color: Colors.grey[900],
                elevation: 5,
                child: InkWell(
                  onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => pzn_offers()))},
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                          child: Center(
                            child: Icon(Icons.library_books, size: 130, color: Colors.yellow[600],),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0),
                          child: Text('Unsere Angebote', style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Card(
                color: Colors.grey[900],
                elevation: 5,
                child: InkWell(
                  onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Hospitals()))},
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                          child: Center(
                            child: Icon(Icons.local_hospital, size: 130, color: Colors.yellow[600],),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0),
                          child: Text('Standorte', style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Card(
                color: Colors.grey[900],
                elevation: 5,
                child: InkWell(
                  onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Hospitals()))},
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                          child: Center(
                            child: Icon(Icons.search, size: 130, color: Colors.yellow[600],),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0),
                          child: Text('Fachgebiete', style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


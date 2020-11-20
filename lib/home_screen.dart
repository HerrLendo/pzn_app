import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pzn_app/corona_alert-item.dart';
import 'package:pzn_app/item.dart';
import 'package:pzn_app/posts.dart';

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
                color: Colors.yellow[600],
                elevation: 5,
                child: InkWell(
                  onTap: (){},
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                          child: Center(
                            child: Icon(Icons.place, size: 130,),
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
                color: Colors.yellow[600],
                elevation: 5,
                child: InkWell(
                  onTap: (){},
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                          child: Center(
                            child: Icon(Icons.local_offer_outlined, size: 130,),
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
                color: Colors.yellow[600],
                elevation: 5,
                child: InkWell(
                  onTap: (){},
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                          child: Center(
                            child: Icon(Icons.group_add, size: 130,),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0),
                          child: Text('Karriere', style: TextStyle(
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


import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
      body: ContactPage(),
    );
  }
}



class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          right: true,
          left: true,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)
                ),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.yellow[700]
                  ),
                  child: Center(
                      child: Text('Kontakt', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                      ),)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('PZN - WIESLOCH', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ButtonBar(
                                    children: <Widget>[
                                      Icon(Icons.arrow_forward_ios_sharp, color: Colors.green ),
                                      FlatButton(
                                        onPressed: () => {},
                                        child: Text('Adresse: Heidelberger Str. 1 69168 Wiesloch', style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ButtonBar(
                                    children: <Widget>[
                                      Icon(Icons.arrow_forward_ios_sharp, color: Colors.green ),
                                      FlatButton(
                                        onPressed: () => {},
                                        child: Text('Telefon: 06222 550', style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ButtonBar(
                                    children: <Widget>[
                                      Icon(Icons.arrow_forward_ios_sharp, color: Colors.green ),
                                      FlatButton(
                                        onPressed: () => {},
                                        child: Text('Webseite: www.pzn-wiesloch.de', style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('FAITHLUX STUDIO', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ButtonBar(
                                    children: <Widget>[
                                      Icon(Icons.arrow_forward_ios_sharp, color: Colors.green ),
                                      FlatButton(
                                        onPressed: () => {},
                                        child: Text('Webseite: www.faithlux.eu', style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ButtonBar(
                                    children: <Widget>[
                                      Icon(Icons.arrow_forward_ios_sharp, color: Colors.green ),
                                      FlatButton(
                                        onPressed: () => {},
                                        child: Text('E-Mail: info@faithlux.eu', style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                ButtonBar(
                                  children: <Widget>[
                                    Icon(Icons.arrow_forward_ios_sharp, color: Colors.green ),
                                    FlatButton(
                                      onPressed: () => {},
                                      child: Text('Vertreten durch: Luca-Paul Siemers', style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text('Bei technischen Fragen zur App wenden Sie sich bitte an:', style: TextStyle(
                        fontSize: 15,
                      ),),
                      Text('support@faithlux.eu', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
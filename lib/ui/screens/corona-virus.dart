import 'package:flutter/material.dart';

class CoronaVirus extends StatelessWidget {
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
      body: CoronaInformation(),
    );
  }
}

class CoronaInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                  child: Text('Corona-Virus', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Text('INFORMATIONEN ZUM CORONA-VIRUS', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Im Umgang mit der Viruserkrankung richtet sich das Psychiatrische Zentrum Nordbaden nach den Empfehlungen und Vorgaben der u.a. Stellen:',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ButtonBar(
                              children: <Widget>[
                                Icon(Icons.arrow_forward_ios_sharp, color: Colors.green ),
                                FlatButton(
                                  onPressed: () => {},
                                  child: Text('Webseite des Robert-Koch Instituts für \nallgemeine Informationen', style: TextStyle(
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
                                    child: Text('Webseite des Ministerium für Soziales \nund '
                                        'Integration Baden-Württemberg \nübernimmt '
                                        'die landesweite Koordination \nund '
                                        'Bereitstellung von Informationen zu \nden '
                                        'Entwicklungen', style: TextStyle(
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
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ButtonBar(
                                children: <Widget>[
                                  Icon(Icons.arrow_forward_ios_sharp, color: Colors.green ),
                                  FlatButton(
                                    onPressed: () => {},
                                    child: Text('die örtlichen Gesundheitsämter', style: TextStyle(
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
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Text('NEUE Besuchsregelungen gelten ab {Date}', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Text('Angesichts steigender Infektionszahlen möchten wir Besuche weiterhin unter bestimmten Voraussetzungen und '
                      'unter Beachtung entsprechender Hygienerichtlinien ermöglichen. Allerdings darf jedoch', style: TextStyle(
                    fontSize: 15,
                  ),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                    child: Text('jeder Patient bzw. jede Patientin pro Tag nur noch von einer Person besucht werden.', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Text('In sämtlichen Gebäuden des PZN sind Sie ferner verpflichtet, eine Mund-Nasen-Bedeckung '
                      '(sog. Alltagsmaske) korrekt zu tragen und die Abstandsregeln einzuhalten.', style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Text('Wir bitten im Interesse der Sicherheit aller um Ihr Verständnis!', style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

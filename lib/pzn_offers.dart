import 'package:flutter/material.dart';

class pzn_offers extends StatelessWidget {
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
        ],
      ),
      body: pzn_offers_page(),
    );
  }
}


class pzn_offers_page extends StatelessWidget {
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
                  child: Text('Unsere Angebote', style: TextStyle(
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
                  Text('PSYCHIATRISCHE VERSORGUNG AUS EINER HAND', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Mit dem Gesetz zur Errichtung der Zentren für Psychiatrie (EZPsychG) wurde das Psychiatrische Zentrum Nordbaden (PZN) 1996 als '
                      'rechtsfähige Anstalt des öffentlichen Rechts errichtet. Als Fachkrankenhaus versorgen wir psychisch kranke Menschen mit einem '
                      'hochprofessionellen Portfolio stationärer, teilstationärer und ambulanter Leistungen. Der Schwerpunkt liegt dabei auf individueller, '
                      'therapeutischer Behandlung sowie professioneller, beziehungsfördernder Pflege. Die Aufgabenstellung umfasst auch rehabilitative Leistungen '
                      'der Bereiche Wohnen und Arbeiten. Universitäre Forschung und Lehre mit Praxisbezug tragen zu medizinischen Fortschritt bei. Einer transparenten '
                      'Öffentlichkeitsarbeit fühlen wir uns verpflichtet. Wir informieren aktiv über unsere Leistungen und Angebote und nutzen dabei verschiedene Kanäle und Medien.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Card(
                color: Colors.grey[900],
                elevation: 5,
                child: InkWell(
                  onTap: () => {},
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Icon(Icons.add, color: Colors.green, size: 40,),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Text('BEHANDELN', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 0.0),
                          child: Text('Wir bieten individuelle, bedarfsgerechte Therapieangebote.', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Angebote/PZN_Behandeln.jpg')
                        ),
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
                  onTap: () => {},
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Icon(Icons.not_listed_location, color: Colors.green, size: 40,),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Text('PFLEGEN', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 0.0),
                          child: Text('Professionelle Pflege bei differenzierter Versorgung.', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Angebote/PZN-Pflegen.jpg')
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
                  onTap: () => {},
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Icon(Icons.not_listed_location, color: Colors.green, size: 40,),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Text('BEGLEITEN', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 0.0),
                          child: Text('Qualifizierte Unterstützung über die Behandlung hinaus.', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Angebote/PZN_Begleiten.jpg')
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
                  onTap: () => {},
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Icon(Icons.not_listed_location, color: Colors.green, size: 40,),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Text('INFORMIEREN', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 0.0),
                          child: Text('Informations- und Dialogangebote zur Aufklärung und Entstigmatisierung', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Angebote/PZN_Informieren.jpg')
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
                  onTap: () => {},
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Icon(Icons.add, color: Colors.green, size: 40,),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Text('SERVICE + KOMFORT', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 0.0),
                          child: Text('Wohlfühlen ermöglichen wir durch vielseitige Service- und Komfortangebote', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Angebote/PZN-Komfort.jpg')
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
                  onTap: () => {},
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Icon(Icons.add, color: Colors.green, size: 40,),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                              child: Text('WOHNEN', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 0.0),
                          child: Text('Das Wohnheim und mehrere Wohngruppen bieten Hilfe bei der Alltags-Strukturierung', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Fachgebiete/Bilder_Verteiler_Fachgebiete/Verteiler_Wohnen.jpg')
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          //item.dart für Posts wie Bilder etcA
        ],
      ),
    );
  }
}
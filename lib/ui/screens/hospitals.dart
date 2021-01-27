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
        ],
      ),
      body: HospitalPage(),
    );
  }
}


_launchURLWiesloch() async {
  const url = 'https://www.pzn-wiesloch.de';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLBruchsal() async {
  const url = 'https://www.pzn-wiesloch.de/standorte/bruchsal/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLMosbach() async {
  const url = 'https://www.pzn-wiesloch.de/standorte/mosbach/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLSchwetzingen() async {
  const url = 'https://www.pzn-wiesloch.de/standorte/schwetzingen/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLWeinheim() async {
  const url = 'https://www.pzn-wiesloch.de/standorte/weinheim/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
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
                  child: Text('Standorte', style: TextStyle(
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
                  Text('DIE STANDORTE DES PSYCHIATRISCHEN ZENTRUMS NORDBADEN', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Mit insgesamt fünf Standorten gewährleistet das Psychiatrische Zentrum Nordbaden eine wohnortnahe und flächendeckende Versorgung der '
                      'Bevölkerung. Die Zentren für Psychische Gesundheit Bruchsal, Neckar-Odenwald, Schwetzingen und Weinheim sowie der Hauptstandort in Wiesloch '
                      'bieten eine Vielzahl von Untersuchungs- und Behandlungseinheiten und ergänzen sich zu einem umfassenden Therapieangebot für Erwachsene, die '
                      'psychiatrischer Beratung und Betreuung bedürfen.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                ],
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
                  onTap: _launchURLWiesloch,
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
                              child: Text('WIESLOCH', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Standorte/Standorte_Wiesloch_Web.jpg')
                        ),
                        ButtonBar(
                          children: <Widget>[
                          ],
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
                  onTap: _launchURLBruchsal,
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
                              child: Text('BRUCHSAL', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Standorte/zfpG_Bruchsal_Eingang.jpg')
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
                  onTap: _launchURLMosbach,
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
                              child: Text('MOSBACH', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network('https://www.pzn-wiesloch.de/fileadmin/_processed_/a/7/csm_Standorte_NOK_Web_e3bcaea1f0.jpg')
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
                  onTap: _launchURLSchwetzingen,
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
                              child: Text('SCHWETZINGEN', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Standorte/Standorte_Schwetzingen_Web.jpg')
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
                  onTap: _launchURLWeinheim,
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
                              child: Text('WEINHEIM', style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          child: Divider(color: Colors.grey,),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network('https://www.pzn-wiesloch.de/fileadmin/user_upload/Wiesloch/Bilder_Standorte/Standorte_Weinheim_Web.jpg')
                        ),
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
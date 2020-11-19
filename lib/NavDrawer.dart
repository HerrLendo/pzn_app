import 'package:flutter/material.dart';
import 'package:pzn_app/Contact.dart';
import 'package:pzn_app/area.dart';
import 'package:pzn_app/corona-virus.dart';
import 'package:pzn_app/developer-tools.dart';
import 'package:pzn_app/hospitals.dart';
import 'package:pzn_app/settings.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                color: Colors.yellow[700],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/pzn_wiesloch_zentralgebaeude.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.info_outline, size: 27,),
            title: Text('Corona-Virus', style: TextStyle(fontSize: 19),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CoronaVirus()))},
          ),
          ListTile(
            leading: Icon(Icons.location_on, size: 27,),
            title: Text('Gelände', style: TextStyle(fontSize: 19),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Area()))},
          ),
          ListTile(
            leading: Icon(Icons.local_hospital, size: 27,),
            title: Text('Krankenhäuser', style: TextStyle(fontSize: 19),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Hospitals()))},
          ),
          ListTile(
            leading: Icon(Icons.phone, size: 27,),
            title: Text('Kontakt', style: TextStyle(fontSize: 19),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Contact()))},
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 27,),
            title: Text('Einstellungen', style: TextStyle(fontSize: 19),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Settings()))},
          ),
          ListTile(
            leading: Icon(Icons.developer_mode, size: 27,),
            title: Text('Developer-Tools', style: TextStyle(fontSize: 19),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Developer()))},
          ),
        ],
      ),
    );
  }
}
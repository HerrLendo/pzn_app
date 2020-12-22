import 'package:flutter/material.dart';
import 'package:pzn_app/ui/screens/Contact.dart';
import 'package:pzn_app/ui/screens/area.dart';
import 'package:pzn_app/ui/screens/corona-virus.dart';




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
            leading: Icon(Icons.phone, size: 27,),
            title: Text('Kontakt', style: TextStyle(fontSize: 19),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Contact()))},
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Area extends StatelessWidget {
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
      body: AreaPage(),
    );
  }
}

class AreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(0.0),
          minScale: 0.1,
          maxScale: 20.0,
          scaleEnabled: true,
          child:Image.asset(
            'assets/lageplan.png', scale: 1, fit: BoxFit.cover, height: double.maxFinite, width: double.infinity,
          ),
        ),
      )
    );
  }
}
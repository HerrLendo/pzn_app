import 'package:flutter/material.dart';

import 'file:///C:/Users/busin/AndroidStudioProjects/pzn_app/lib/ui/screens/posts.dart';

class Developer extends StatelessWidget {
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
      body: DeveloperPage(),
    );
  }
}



class DeveloperPage extends StatelessWidget {
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
                  child: Text('Developer-Tools', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),)
              ),
            ),
          ),
          SizedBox(
            height: 700,
            child: PostList(),
          ),
        ],
      ),
    );
  }
}
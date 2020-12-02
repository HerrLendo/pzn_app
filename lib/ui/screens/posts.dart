import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new StreamBuilder(
      stream: Firestore.instance.collection('posts').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Center(child: new CircularProgressIndicator());
        return new SizedBox(
          height: 18300,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: snapshot.data.documents.map<Widget>((document) {
              return new Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.network(document['image'])
                      ),
                      SizedBox(
                        child: ListTile(
                          leading: Icon(Icons.alternate_email,
                            size: 43,
                            color: Colors.yellow[700],),
                          title: new Text(document['title'], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                          subtitle: new Text(document['content'], style: TextStyle(fontSize: 15),),
                        ),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: Text(document['user'], style: TextStyle(
                              color: Colors.orange
                            ),),
                            onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailPage()))},
                          ),
                          Text(document['date']),
                          FlatButton(
                            child: Text('Weiterlesen'),
                            onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailPage()))},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{Post Title}'),
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}

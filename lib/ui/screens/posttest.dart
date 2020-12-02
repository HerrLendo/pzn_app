import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:url_launcher/url_launcher.dart';

import 'details_page.dart';

class LandingPage extends StatelessWidget {

  wp.WordPress wordPress = wp.WordPress(
    baseUrl: 'https://pluto.faithlux.eu/wp-json/wp/v2/posts',
  );

  _launchUrl(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Cannot launch $link';
    }
  }


  _fetchPosts() {
    Future<List<wp.Post>> posts = wordPress.fetchPosts(
        postParams: wp.ParamsPostList(
          context: wp.WordPressContext.view,
          pageNum: 1,
          perPage: 5,
        ),
        fetchAuthor: true,
        fetchFeaturedMedia: true,
        fetchComments: true
    );

    return posts;
  }

  _getPostImage(wp.Post post) {
    if (post.featuredMedia == null) {
      return SizedBox();
    }
    return Image.network(post.featuredMedia.sourceUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: _fetchPosts(),
          builder: (BuildContext context, AsyncSnapshot<List<wp.Post>> snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return Container();
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data.length ?? 0,
              itemBuilder: (context, index) {
                wp.Post post = snapshot.data[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(post)
                        )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            _getPostImage(post),
                            SizedBox(height: 10,),
                            Text(
                              post.title.rendered.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            SizedBox(height: 15,),
                            Html(
                              data: post.excerpt.rendered.toString(),
                              onLinkTap: (String link) {
                                _launchUrl(link);
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(post.date.toString().replaceAll('T', ' ')),
                                Text(post.author.name),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }}
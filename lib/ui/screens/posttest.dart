import 'package:flutter/material.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:pzn_app/ui/widgets/dev_message.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {

  wp.WordPress wordPress = wp.WordPress(
    baseUrl: 'https://pluto.faithlux.eu/wp-json/wp/v2/posts',
    authenticator: wp.WordPressAuthenticator.JWT,
    adminName: 'Luca-Paul',
    adminKey: 'Lp1802s04',
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
        child: DevMessageItem(),
      ),
    );
  }}
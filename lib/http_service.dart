import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List> fetchWpPosts() async {
  final response = await http.get(
      'https://pluto.faithlux.eu/topics/uncategorized/',
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}
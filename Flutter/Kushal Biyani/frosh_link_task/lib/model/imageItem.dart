import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ImageItem {
  final int albumId;
  final String id;
  final String title;
  final String url;
  final String thumbnailUrl;

  ImageItem(
      {@required this.albumId,
      @required this.id,
      @required this.title,
      @required this.url,
      @required this.thumbnailUrl});
}

Future<List<ImageItem>> fetchImageItems() async {
  const url = 'https://jsonplaceholder.typicode.com/photos';
  try {
    final response = await http.get(Uri.parse(url));
    // print(json.decode(response.body));
    final body = json.decode(response.body) as List<dynamic>;
    final List<ImageItem> imageList = [];
    body.forEach((element) {
      imageList.add(ImageItem(
          albumId: element['albumId'],
          id: element['id'].toString(),
          thumbnailUrl: element['thumbnailUrl'],
          title: element['title'],
          url: element['url']));
    });
    return imageList;
  } catch (error) {
    throw error;
  }
}

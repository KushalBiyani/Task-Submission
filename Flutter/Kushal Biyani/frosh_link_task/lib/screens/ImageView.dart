import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String url;
  final String tag;
  ImageView(this.url, this.tag);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: tag,
            child: Image.network(url, fit: BoxFit.contain),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.black,
    );
  }
}

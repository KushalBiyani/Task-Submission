import 'package:flutter/material.dart';
import 'package:frosh_link_task/model/imageItem.dart';
import 'package:frosh_link_task/screens/ImageView.dart';

class ImageItemDetailScreen extends StatelessWidget {
  static const routeName = '/ImageItemDetail';
  @override
  Widget build(BuildContext context) {
    final imageItem = ModalRoute.of(context).settings.arguments as ImageItem;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image",
        ),
      ),
      body: Container(
        height: double.infinity,
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return ImageView(
                            imageItem.url,
                            imageItem.id,
                          );
                        }));
                      },
                      child: Hero(
                          tag: imageItem.id,
                          child: Image.network(imageItem.url)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      imageItem.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

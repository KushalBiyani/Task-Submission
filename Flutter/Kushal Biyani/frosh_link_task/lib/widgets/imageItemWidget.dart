import 'package:flutter/material.dart';
import 'package:frosh_link_task/model/imageItem.dart';
import 'package:frosh_link_task/screens/imageItemDetail.dart';

class ImageItemWidget extends StatelessWidget {
  ImageItemWidget(this.imageItem);
  final ImageItem imageItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      child: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              child: Hero(
                tag: imageItem.id,
                child: Image.network(
                  imageItem.thumbnailUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 45,
              padding: EdgeInsets.only(bottom: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  imageItem.title,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          Navigator.of(context)
              .pushNamed(ImageItemDetailScreen.routeName, arguments: imageItem);
        },
      ),
    );
  }
}

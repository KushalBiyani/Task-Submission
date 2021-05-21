import 'package:flutter/material.dart';
import 'package:frosh_link_task/model/imageItem.dart';
import 'package:frosh_link_task/widgets/imageItemWidget.dart';

class ImageGrid extends StatelessWidget {
  final List<ImageItem> imageList;
  ImageGrid(this.imageList);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.78,
      ),
      itemBuilder: (ctx, index) {
        return ImageItemWidget(imageList[index]);
      },
      itemCount: imageList.length,
      padding: EdgeInsets.all(8),
    );
  }
}

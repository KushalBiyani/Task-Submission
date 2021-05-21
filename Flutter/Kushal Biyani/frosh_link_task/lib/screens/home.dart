import 'package:flutter/material.dart';
import 'package:frosh_link_task/model/imageItem.dart';
import 'package:frosh_link_task/widgets/imagesGridView.dart';

class Home extends StatefulWidget {
  static const routeName = '/';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ImageItem> imagesList = [];
  List<ImageItem> fetchimagesList = [];
  bool _isLoading = true;
  @override
  void initState() {
    fetchData();

    super.initState();
  }

  void fetchData() async {
    fetchimagesList = await fetchImageItems();
    setState(() {
      imagesList = fetchimagesList;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frosh Link Task',
        ),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ImageGrid(imagesList),
    );
  }
}

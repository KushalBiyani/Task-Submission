import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frosh_link_task/screens/home.dart';
import 'package:frosh_link_task/screens/imageItemDetail.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FrostLink Task',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (ctx) => Home(),
        ImageItemDetailScreen.routeName: (ctx) => ImageItemDetailScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

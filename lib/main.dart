import 'package:flutter/material.dart';
import 'package:flutter_application_8/data/menu_items.dart';
import 'package:flutter_application_8/factories/android_factory.dart';
import 'package:flutter_application_8/factories/ios_factory.dart';

import 'model/menu_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Abstract factory'),
        actions: [
          PopupMenuButton<MenuItem>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                    ...MenuItems.items.map(buildItem),
                  ]),
        ],
      ),
    );
  }

  void onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.android:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AndroidFactory()));
        break;
      case MenuItems.ios:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const IOSFactory()));
        break;
      default:
    }
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) {
    return PopupMenuItem(
      value: item,
      child: Row(
        children: [
          Icon(
            item.icon,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(width: 12),
          Text(item.name),
        ],
      ),
    );
  }
}

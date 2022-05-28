import 'package:flutter/material.dart';
import 'package:intro/models/catalog.dart';
import 'package:intro/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/homescreen";
  final int days = 30;
  final String S = "Srivathsa";

  get buildcontext => null;

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, ((index) => MangaModel.items[0]));
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MUTILVERSE CATALOG",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return itemWidget(
                item: dummyList[index],
              );
            }
          ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

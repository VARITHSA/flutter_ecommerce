import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:intro/models/catalog.dart';
import 'package:intro/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/homescreen";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get buildcontext => null;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    MangaModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 12,
            ),
            itemCount: MangaModel.items.length,
            itemBuilder: (context, index) {
              final item = MangaModel.items[index];
              return Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                  ),
                child: GridTile(
                  header: Container(
                    child: Text(
                      item.name,
                    style: TextStyle(color:Colors.white),
                    ),
                    padding: const EdgeInsets.all(11),
                    decoration: const BoxDecoration(
                      color: Colors.deepPurple
                    ),),
                  footer: Container(
                    child: Text(
                      item.price.toString(),
                    style: TextStyle(color:Colors.white),
                    ),
                    padding: const EdgeInsets.all(11),
                    decoration: const BoxDecoration(
                      color: Colors.black
                    ),),
                  child:Image.network(
                    item.image,
                    ),
                  ),
              );
            },
          ),
      
      ),
      drawer: const MyDrawer(),
    );
  }
}

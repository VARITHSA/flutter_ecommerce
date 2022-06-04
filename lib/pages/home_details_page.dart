import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:intro/widgets/themes.dart';

import '../models/catalog.dart';

class HomeDetail extends StatelessWidget {
  static String routeName = "/detailhome";
  const HomeDetail(
    Key? key,
    this.catalog,
  ) : super(key: key);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mytheme.creamColor,
      ),
     
    );
  }
}

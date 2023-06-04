import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sceen/home_page.dart';
import 'package:flutter_application_1/models/catalog.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
     itemCount: CatalogModel.items!.length,
     itemBuilder: (context, index) {
       final catalog= CatalogModel.items![index];
       return CatalogItem(catalog: catalog);
     },
    );
  }
}
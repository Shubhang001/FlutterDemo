import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sceen/home_detail_page.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_image.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
     itemCount: CatalogModel.items!.length,
     itemBuilder: (context, index) {
       final catalog= CatalogModel.items![index];
       return InkWell(
        onTap: () => Navigator.push(
          context,
           MaterialPageRoute(
            builder:(context) => HomeDetailpage(catalog: catalog),
            ) ,
            ),
        child: CatalogItem(catalog: catalog)
        );
     },
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({
    Key? key,
    required this.catalog,
  // ignore: unnecessary_null_comparison
  }) : assert(catalog !=null),
  super(key: key);

final Item catalog;


  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image),
          ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  catalog.name.text.color(MyTheme.darkBluishColor).bold.make(),
                  catalog.discript.text.textStyle(context.captionStyle).make(),
                  10.heightBox,
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: EdgeInsets.zero,
                    children: [
                      "\$${catalog.price}".text.bold.make(),
                      ElevatedButton(
                        onPressed:() {  }, 
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                          shape: MaterialStateProperty.all(
                           const StadiumBorder(),
                          ),
                        ),
                      child: "Buy".text.make(),
                      )
                    ],
                  ).pOnly(right: 8.0),
                ],
              ),
              ),
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}
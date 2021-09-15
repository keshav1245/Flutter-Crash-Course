import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_catelog/models/catelog.dart';
import 'package:flutter_catelog/widgets/drawer.dart';
import 'package:flutter_catelog/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final int days = 30;
  final String name = "Zukayu";


  @override
  initState(){
    super.initState(); // Called before build function. Agar yahan hi data mil jaye to we can pass it in the build function.
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decoded = jsonDecode(catalogJson);
    var products = decoded['products'];
    CatalogModel.items = List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);



    return Scaffold( // Scaffhold is analogous to HTML head body and footer.
        appBar: AppBar(
            title: Text("Catelog App"), // Title takes in a text widget
        ),
        body :
        // Container( // Constrains goes down, Sizes goes up and Parent sets the Position
        //   constraints: BoxConstraints(
        //     minHeight: 70,
        //     maxHeight: 200,
        //     minWidth: 70,
        //     maxWidth: 200
        //   ),
        //   color: Colors.green,
        //   child: Container(
        //     height: 100,
        //     width: 100,
        //     color: Colors.red
        //   ),
        // ),

        // Center(
        //     child: Container(
        //         child: Text("Welcome $name to $days days of Flutter") // $ => String Interpolation, to manipulate our string vals
        //     )
        // ),
        (CatalogModel.items != null && CatalogModel.items.isNotEmpty) ?
        // ListView.builder( // .buider gives us Recycler View
        //   itemCount: CatalogModel.items.length,
        //   itemBuilder: (context, index) {
        //     return ItemWidget(
        //         item: CatalogModel.items[index]
        //     );
        //   },
        // )
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16
            ), //to tell how many items in a grid,  it uses SliverGridDelegate
            itemBuilder: (context, index){
              final item = CatalogModel.items[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: GridTile(
                    header: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple
                        ),
                        child: Text(item.name, style: TextStyle(color: Colors.white),)
                    ),
                    child: Image.network(item.image),
                    footer: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple
                        ),
                        child: Text(item.price.toString(), style: TextStyle(color: Colors.white),)
                    ),
                  )
              );
            },
            itemCount: CatalogModel.items.length
        )
            : Center(
          child: CircularProgressIndicator(),
        ),
        drawer: MyDrawer()
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catelog/models/catelog.dart';

class ItemWidget extends StatelessWidget{
  final Item item;

  const ItemWidget({Key? key, required this.item}) : assert(item != null), super(key: key);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              print(item.name);
            },
            leading: Image.network(item.imUrl),
            title: Text(item.name),
            subtitle: Text(item.description),
            trailing: Text("\$"+item.price.toString(), style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),textScaleFactor: 1.5,),
          ),
        ),
      ),
    );
  }


}
import 'package:flutter/material.dart';
import 'package:flutter_catelog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),

    );
  }

}

class _CartTotal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.bold.xl5.color(Theme.of(context).accentColor).make(),
          30.widthBox,
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context).buttonColor)
              ),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported yet!".text.make()));
                },
              child: "Buy".text.white.make()
          ).w32(context)
        ],
      ),
    );

  }
}



class _CartList extends StatefulWidget{
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
            icon : Icon(Icons.remove_circle_outline),
            onPressed: (){

            },
        ),
        title: "Item 1 ".text.xl3.bold.make(),
      ),
    );
  }
}
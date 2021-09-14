import "package:flutter/material.dart";
import 'package:flutter_catelog/widgets/drawer.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final int days = 30;
    final String name = "Zukayu";

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

        Center(
            child: Container(
                child: Text("Welcome $name to $days days of Flutter") // $ => String Interpolation, to manipulate our string vals
            )
        ),
        drawer: MyDrawer()
    );
  }


//  Notes
//Diff between Flutter and react native ?
//React native uses Native components of both Android and iOS
//Flutter is like naming engine that draws on a canvas.

//3 Trees in Flutter
// 1. Widget Tree,
// 2. Element Tree,
// 3. Render Tree
//Order : 1 -> 2 -> 3

//Drawing/Painting on canvas is done by Render Tree
//Widgets are immutable
//We write a widget which further sends requirements to element tree and painted by Render Tree

//Change in widget properties allow render tree to redraw the complete widget again ( because of immutability)
//But Element Tree nows that it is the same element ()


}
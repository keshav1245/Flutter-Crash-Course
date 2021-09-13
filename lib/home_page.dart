import "package:flutter/material.dart";

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final int days = 30;
    final String name = "Keshav";

    return Scaffold( // Scaffhold is analogous to HTML head body and footer.
        appBar: AppBar(
            title: Text("Catelog App"), // Title takes in a text widget
        ),
        body : Center(
            child: Container(
                child: Text("Welcome $name to $days days of Flutter") // $ => String Interpolation, to manipulate our string vals
            )
        ),
        drawer: Drawer()
    );
  }



}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Sizes Go Up the tree, Constrain go down the tree and parent sets the position;

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final String imageUrl = "https://media-exp1.licdn.com/dms/image/C4E03AQH585UwoMdfLA/profile-displayphoto-shrink_800_800/0/1596370407676?e=1637193600&v=beta&t=TQ7nWw4CMiuMwvM-KPn5lfXkqbhY7f4CZQQ-SGuS4NE";
    return Drawer(
      elevation: 10,
      //ListView.builder is similar to Recycler View in Android !
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  accountName: Text("Keshav Tangri", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                  accountEmail: Text("tangri57@gmail.com", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl), // It can have Image provider like Image.network(imageUrl)
                  ),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textScaleFactor: 1.2),
              // trailing: Icon(CupertinoIcons.arrow_up_right, color: Colors.white)
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text("Profile", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textScaleFactor: 1.2),
                // trailing: Icon(CupertinoIcons.arrow_up_right, color: Colors.white)
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text("Email", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold), textScaleFactor: 1.2),
                // trailing: Icon(CupertinoIcons.arrow_up_right, color: Colors.white)
            )
          ],
        ),
      ),
    );
  }



}
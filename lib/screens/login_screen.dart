import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Material(
      //child and children
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover
          ),
          SizedBox(
            height: 20,
          ),
          Text("Welcome", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),textAlign: TextAlign.center),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // symmetric : for vertical and hori | all : same all around
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your Username",
                      labelText: "Username"
                  ),
                ),
                TextFormField(
                  obscureText: true, // secure text for password
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){
                  print("Hi Zukayu !");
                },child: Text('Login'),
                  style: TextButton.styleFrom(),
                )
              ],
            ),
          )
        ],
      )
    );
  }


}
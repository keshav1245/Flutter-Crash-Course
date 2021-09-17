import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/routes.dart';

class LoginPage extends StatefulWidget{
  // underscore means private

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async{

    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Material(
      //child and children
      color: Theme.of(context).canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                  "assets/images/hey.png",
                  fit: BoxFit.cover
              ),
              SizedBox(
                height: 20,
              ),
              Text("Welcome $name", style: TextStyle(
                fontSize: 28,
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username is required !";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name = value;
                        setState(() {

                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password is required !";
                        }else if(value.length < 6){
                          return "Password Length should be atleast 6 !";
                        }
                        return null;
                      },// secure text for password
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password"
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: Theme.of(context).buttonColor,
                      borderRadius: BorderRadius.circular( changeButton ? 40 : 8),
                      child: InkWell( // Excepts its ancestor to be a material !
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer( // To make a Container box clickable we have 2 opts
                                   // 1. To wrap with Gesture detector : It wont give back any feedback(no ripple effect)
                                   // 2. To wrap with Inkwell : It will give feedback of clicking like ripple effect

                                   // Ink and Container (not Animated) are similar !!
                          width: changeButton ? 40 : 200,
                          height: 40,
                          alignment: Alignment.center,
                          // color: Colors.deepOrange, // If we have Box Decoration, then colour is to be specified there.
                          child: changeButton
                                  ? Icon(Icons.done, color :  Colors.white)
                                  : Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepOrange,
                          //   // shape: changeButton
                          //   //     ? BoxShape.circle
                          //   //     : BoxShape.rectangle,
                          //   borderRadius: BorderRadius.circular( changeButton ? 40 : 8)
                          // ), Decoration is removed because to give a ripple effect, it has to be inserted in material
                          duration: Duration(seconds: 1),
                        ),
                      ),
                    ),
                    // ElevatedButton(onPressed: (){
                    //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                    // },child: Text('Login'),
                    //   style: TextButton.styleFrom(minimumSize: Size(200, 40)),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
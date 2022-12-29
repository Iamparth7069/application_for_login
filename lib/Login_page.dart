import 'dart:ffi';
import 'package:application/files//roudes.dart';
import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}
class _LoginpageState extends State<Loginpage> {
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(
          seconds: 1)); // holed to press the button to navigate second activity to another activity
      await Navigator.pushNamed(context, myrouts.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Form(
        key: _formKey,
          child: Column(  
          children: [
            Image.asset("assets/images/hellow.jpg",fit: BoxFit.cover,height: 250,width: 500,),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome $name",style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.bold
    ),),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32 ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "E nter user name",
                      labelText: "Username"
                    ),
                    validator: (Value){
                      if(Value!.isEmpty){
                        return "please Enter the username Cannot Empty";
                      }
                      return null;
                    },
                    onChanged: (Value){
                      name=Value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                    ),
                    validator : (Value){
                      if(Value!.isEmpty){
                        return "please Enter the Password  Cannot Empty";
                      }
                      else if(Value!.length < 6 ){
                        return "Please Enter mor than 6 character ";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   // style: TextButton.styleFrom(
                  //       // minimumSize: Size(100, 50)),
                  //   // style: TextButton.styleFrom(maximumSize:),
                  //   onPressed: (){
                  //         Navigator.pushNamed(context, myrouts.homeRoute);
                  //   },
                  // ),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius:
                        BorderRadius.circular(changeButton? 50 : 10),
                    child: InkWell(
                      onTap: ()=> moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width:changeButton?50:150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton? Icon(
                          Icons.done,color: Colors.white,
                        ):Text("Login",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        // decoration: BoxDecoration(
                        //   color: Colors.deepPurple,
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
          ),
        ),
      ));
  }
}

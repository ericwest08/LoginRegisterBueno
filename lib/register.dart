import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();  
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
        appBar: AppBar(
      title: Text('Register'),
    ),
    body:  Center(
        child: Text("Welcome to GeeksforGeeks!!!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: (){
        // action on button press
          }
    ),
    );
  }

}
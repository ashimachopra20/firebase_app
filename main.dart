

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
 
  WidgetsFlutterBinding.ensureInitialized();
Firebase.initializeApp(); 
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  
  Widget build(BuildContext context) {
     
 
 
 

  
    
 myget() async{
  var fsconnect= FirebaseFirestore.instance;
  var g = await fsconnect.collection("Student").get();
  var i;
  for(i in g.docs){
  print (i.data());
  } 
  }

 
    
    return MaterialApp(
      home:Scaffold( appBar: AppBar(title:Text('Firebase App')),
     body:Column(
       children: <Widget>[
        RaisedButton(child: Text('Click to Send'),onPressed: (){
          var fsconnect= FirebaseFirestore.instance;

var s= fsconnect.collection("Student");
       s.add({
      "name":"vinit",
      "Sem":"10",
       });}
        ),
        RaisedButton(child: Text('Click to Get'),onPressed:myget ),
     ],
     ),
      
     ),
      debugShowCheckedModeBanner: false,
    );
  }
}


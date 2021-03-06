import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
   home: Idapp() ,
));

class Idapp extends StatefulWidget {
  @override
  _IdappState createState() => _IdappState();
}

class _IdappState extends State<Idapp> {

  //In this area i declare variables
  int Fanfollowing=10000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Stalk profile"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Chris Martin",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "PROFESSION",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Band Lead Singer: COLDPLAY ",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Fan Following",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "$Fanfollowing",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.amberAccent,
                ),
                SizedBox(width: 4.0),
                Text(
                  "chris_Martin@gmail.com",
                   style: TextStyle(
                     color: Colors.grey,
                     letterSpacing: 2.0,
                   ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/chris.jpg"),
                radius: 120.0,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            Fanfollowing+=1223;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add,
        size: 30.0,
        ),
      ),
    );
  }
}


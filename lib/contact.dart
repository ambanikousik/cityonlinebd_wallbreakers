import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Contacts extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color.fromRGBO(240,240,240,1.0),
        child: Container(
         // width: 500,
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height *2.5/3,
          width: MediaQuery.of(context).size.width *2.5/3,
          padding: EdgeInsets.all(28.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color:Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black54)
              ]
            ,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'CITY ONLINE Ltd.',
                  style: TextStyle(fontSize: 35.0, color: Colors.blueGrey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Sector: 7 \nRoad - 18 \nHouse- 43 (1st floor) \nUttara,Dhaka, Bangladesh 1230',
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        launch("http://m.me/cityonlineisp");
                      },
                      color: Colors.blueGrey,
                      child: Text('Chat'),
                      textColor: Colors.white,
                    ),
                    RaisedButton(
                      onPressed: () {
                        launch("tel:09611699533");
                      },
                      color: Colors.blueGrey,
                      child: Text('Call'),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              )],
          ),
        ) ,
      ),
    );
  }
  }

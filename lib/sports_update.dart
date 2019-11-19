import 'package:flutter/material.dart';
import 'data.dart';

class Sports extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _sports();
  }

}

class _sports extends State<Sports> {



  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(240,240,240,1.0),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text('Watch Live Tv',style: TextStyle(color: Colors.white),),
      ),
      body:Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: SportsList.length,
          itemBuilder: (BuildContext context, int index) {
            Map sportlist = SportsList[index];
            return Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(width: 1.0, color: Colors.white24))),
                    child: Icon(Icons.live_tv, color: Colors.white),
                  ),
                  title: Text(
                    "${sportlist["title"]}",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.linear_scale, color: Colors.yellowAccent),
                      Text(" Press to watch", style: TextStyle(color: Colors.white))
                    ],
                  ),
                  onTap: () {
                    selectedUrlx = sportlist["link"];
                    Navigator.pushNamed(context, '/browserX');
                    PlayingVideo = false;
                  },
                ),
              ),

            );
          },
        ),
      ) ,
    );

  }
}


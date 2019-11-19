import 'package:flutter/material.dart';
import 'data.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IspApp extends StatefulWidget {
  @override
  _ispApp createState() => _ispApp();

}

class _ispApp extends State<IspApp> {

  void initState() {
    super.initState();
    _getIPAddress();
  }

    var _ipAddress = '';
  final url = 'https://httpbin.org/ip';
  final httpClient = new Client();
  _getIPAddress() async {
    var response = await httpClient.get(url);
    String ip = json.decode(response.body)['origin'];
    var comma = ip.indexOf(',');
    String singleip = ip.substring(0, comma);
    setState(() {
      _ipAddress = singleip;
      print(_ipAddress);
    });
  }




  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
          title: Text(
              "City Online Ltd.", style: TextStyle(color: Colors.white)),
        ),
        body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              color: Color.fromRGBO(240, 240, 240, 1.0),
              height: 620,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Expanded(
                      child: GridView.count(
                        padding: EdgeInsets.only(top: 60),
                        crossAxisCount: 2,
                        children: new List<Widget>.generate(6, (index) {
                          switch (index) {
                            case 0:
                              return Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      PlayingVideo = false;
                                      Navigator.pushNamed(context, '/media');
                                    },
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.movie,
                                            color: Colors.green,
                                            size: 100,
                                          ),
                                          Text('Media Server', style: TextStyle(
                                              color: Colors.black),),
                                        ],
                                      ),

                                      decoration: BoxDecoration(

                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                              break;
                            case 1:
                              return Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/liveTv');
                                    },
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.tv,
                                            color: Colors.orange,
                                            size: 100,
                                          ),
                                          Text('Live Tv', style: TextStyle(
                                              color: Colors.black)),
                                        ],
                                      ),

                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54)
                                        ],),
                                    ),
                                  ),

                                ],
                              );
                              break;
                            case 2:
                              return Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/sport');
                                    },
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            FontAwesomeIcons.footballBall,
                                            color: Colors.red,
                                            size: 80,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                          ),
                                          Text('Sports Update', style: TextStyle(
                                              color: Colors.black)),
                                        ],
                                      ),


                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54)
                                        ],),
                                    ),
                                  ),

                                ],
                              );
                              break;
                            case 3:
                              return Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/contact');
                                    },
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.perm_contact_calendar,
                                            color: Colors.blue,
                                            size: 100,
                                          ),
                                          Text('Contact', style: TextStyle(
                                              color: Colors.black)),
                                        ],
                                      ),

                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54)
                                        ],),
                                    ),
                                  ),

                                ],
                              );
                              break;
                            case 4:
                              return Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                     Navigator.pushNamed(context, '/news');
                                    },
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.branding_watermark,
                                            color: Colors.purpleAccent,
                                            size: 100,
                                          ),
                                          Text('News', style: TextStyle(
                                              color: Colors.black)),
                                        ],
                                      ),

                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54)
                                        ],),
                                    ),
                                  ),

                                ],
                              );
                              break;
                            case 5:
                              return Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/routersetup');
                                    },
                                    child: Container(
                                      width: 120,
                                      height: 120,
                                      child: Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.settings,
                                            color: Colors.blueGrey
                                            ,
                                            size: 100,
                                          ),
                                          Text('Router Setup', style: TextStyle(
                                              color: Colors.black)),
                                        ],
                                      ),

                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54)
                                        ],),
                                    ),
                                  ),

                                ],
                              );
                              break;
                          }
                        }),
                      ),
                    )
                  ]),
            )));
  }

  _showAlert(BuildContext context) {
    // set up the buttons


    Widget launchButton = FlatButton(
      child: Text("OK"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Wlcome !!"),
      content: Text("enjoy $_ipAddress"),
      actions: [
        launchButton,
      ],
    );
    // show the dialog
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

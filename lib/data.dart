import 'dart:async';
import 'package:http/http.dart' as http;


int x = images.length;
int n = 2;
int p,r;
var servers = new List<ServerList>();
var channels = new List<TvChannel>();
const TvName = "/city_online_bd_tv.json";
const ServerName = "/city_online_bd_server.json";
var PlayingVideo = false;

class API {
  static Future getChannel() {
    var url = "https://wallbreakers.xyz/ispapp" + TvName ;
    return http.get(url);
  }
  static Future getServer() {
    var url = "https://wallbreakers.xyz/ispapp" + ServerName ;
    return http.get(url);
  }
}


class TvChannel {
  String name;
  String url;

  TvChannel(int id, String name, String url) {
    this.name = name;
    this.url = url;
  }

  TvChannel.fromJson(Map json)
      : name = json['name'],
        url = json['link'];

  Map toJson() {
    return { 'name': name, 'link': url};
  }
}

class ServerList {
  String name;
  String url;

  ServerList(int id, String name, String url) {
    this.name = name;
    this.url = url;
  }

  ServerList.fromJson(Map json)
      : name = json['name'],
        url = json['link'];

  Map toJson() {
    return { 'name': name, 'link': url};
  }
}


List<String> imagesx= [
      "image/image_03.jpg",
      "image/image_02.jpg",
      "image/image_01.png",
      "image/image_04.jpg",
      "image/image_03.jpg",
      "image/image_02.jpg",
      "image/image_01.png",
];

List<String> images= [
  "image/image_03.jpg",
  "image/image_02.jpg",
  "image/image_01.png",
  "image/image_04.jpg",
];


String VideoUrl = '';



List<String> packageList = [
  'STANDARD',
  'TURBO',
  'ULTRA',
  'VIP',
      ];

List<String> SpeedList = [
  '10',
  '15',
  '20',
  '25',
];

List<String> Price = [
  '1000',
  '1500',
  '2000',
  '2500',
];
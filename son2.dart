
import 'package:cklist_son/cklist/hidrolik/son3.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/services.dart';
import '../modelMadde.dart';


//KABİN İÇİ

class son2 extends StatefulWidget {
  dynamic mad;
  son2({this.mad});
  @override
  _son2State createState() => _son2State();
}
class _son2State extends State<son2> {
  List<dynamic> mad;
  @override
  void initState() {
    super.initState();
    _loadData().then((value) {
      setState(() {
        mad = value;
      });
    });
    _loadDataToTravelList().then((value) => print(
        "" + value[0].toString()));
  }
  Future<List<dynamic>> _loadData() async {
    String jsonString = await rootBundle.loadString('assets/elektrikli/ea3maddeler.json');
    return json.decode(jsonString).toList();
  }

  Future<List<modelMadde>> _loadDataToTravelList() async {
    String jsonString = await rootBundle.loadString('assets/elektrikli/ea3maddeler.json');
    List<dynamic> jsonResponse = json.decode(jsonString).toList();
    return jsonResponse.map((v) => modelMadde.fromJson(v)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(     backgroundColor: Colors.blueGrey,
        title: Center(child: Text("MAKİNA DAİRESİ")),
      ),
      body:(mad == null || mad.isEmpty)?  Center(child:LinearProgressIndicator()): ListView.builder(
        shrinkWrap: true,
        itemCount: mad.length,
        itemBuilder: (context, index) {
          return(mad[index]["mmadde"] == null || mad[index]["mmadde"].isEmpty)? Container(): Card(

            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sonuc(mad: mad[index],)),
                );
              },
              contentPadding: EdgeInsets.all(10),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 Text("${mad[index]["mmadde"]}",textAlign: TextAlign.left),
                ],
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/${mad[index]["mresim"]}'),
              ),
              subtitle: Text("${mad[index]["mmadde_numarasi"]}",textAlign: TextAlign.right),
            ),
          );
        },
      ),
    );
  }
}


// kuyu dibi


class kuyudibi extends StatefulWidget {
  dynamic mad;
  kuyudibi({this.mad});
  @override
  _kuyudibiState createState() => _kuyudibiState();
}
class _kuyudibiState extends State<kuyudibi> {
  List<dynamic> mad;
  @override
  void initState() {
    super.initState();
    _loadData().then((value) {
      setState(() {
        mad = value;
      });
    });
    _loadDataToTravelList().then((value) => print(
        "" + value[0].toString()));
  }
  Future<List<dynamic>> _loadData() async {
    String jsonString = await rootBundle.loadString('assets/elektrikli/ea3maddeler.json');
    return json.decode(jsonString).toList();
  }

  Future<List<modelMadde>> _loadDataToTravelList() async {
    String jsonString = await rootBundle.loadString('assets/elektrikli/ea3maddeler.json');
    List<dynamic> jsonResponse = json.decode(jsonString).toList();
    return jsonResponse.map((v) => modelMadde.fromJson(v)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(     backgroundColor: Colors.blueGrey,
        title: Center(child: Text("KUYU DİBİ")),
      ),
      body:(mad == null || mad.isEmpty)?  Center(child:LinearProgressIndicator()): ListView.builder(
        shrinkWrap: true,
        itemCount: mad.length,
        itemBuilder: (context, index) {
          return(mad[index]["kmadde"] == null || mad[index]["kmadde"].isEmpty)? Container(): Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kuyudibialt(mad: mad[index],)),
                );
              },
              contentPadding: EdgeInsets.all(10),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
               Text("${mad[index]["kmadde"]}",textAlign: TextAlign.left),
                ],
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/${mad[index]["kresim"]}'),
              ),
              subtitle: Text("${mad[index]["kmadde_numarasi"]}",textAlign: TextAlign.right),
            ),
          );
        },
      ),
    );
  }
}


// kabin üzeri

class kabinuzeri extends StatefulWidget {
  dynamic mad;
  kabinuzeri({this.mad});
  @override
  _kabinuzeriState createState() => _kabinuzeriState();
}
class _kabinuzeriState extends State<kabinuzeri> {
  List<dynamic> mad;
  @override
  void initState() {
    super.initState();
    _loadData().then((value) {
      setState(() {
        mad = value;
      });
    });
    _loadDataToTravelList().then((value) => print(
        "" + value[0].toString()));
  }
  Future<List<dynamic>> _loadData() async {
    String jsonString = await rootBundle.loadString('assets/elektrikli/ea3maddeler.json');
    return json.decode(jsonString).toList();
  }

  Future<List<modelMadde>> _loadDataToTravelList() async {
    String jsonString = await rootBundle.loadString('assets/elektrikli/ea3maddeler.json');
    List<dynamic> jsonResponse = json.decode(jsonString).toList();
    return jsonResponse.map((v) => modelMadde.fromJson(v)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(     backgroundColor: Colors.blueGrey,
        title: Center(child: Text("kabin üzeri")),
      ),
      body:(mad == null || mad.isEmpty)?  Center(child:LinearProgressIndicator()): ListView.builder(
        shrinkWrap: true,
        itemCount: mad.length,
        itemBuilder: (context, index) {
          return(mad[index]["kzmadde"] == null || mad[index]["kzmadde"].isEmpty)? Container(): Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kzaltmadde(mad: mad[index],)),
                );
              },
              contentPadding: EdgeInsets.all(10),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("${mad[index]["kzmadde"]}",textAlign: TextAlign.left),
                ],
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/${mad[index]["kzresim"]}'),
              ),
              subtitle: Text("${mad[index]["kzmadde_numarasi"]}",textAlign: TextAlign.right),
            ),
          );
        },
      ),
    );
  }
}
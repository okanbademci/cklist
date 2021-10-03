
import 'package:cklist_son/cklist/hidrolik/son2.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import '../../cardWidget.dart';
import '../modelMadde.dart';

class sonbir extends StatefulWidget {
  dynamic mad;
  sonbir({this.mad});
  @override
  _sonbirState createState() => _sonbirState();
}

class _sonbirState extends State<sonbir> {
  List<dynamic> mad;
  @override
  void initState() {
    super.initState();
    _loadData().then((value) {
      setState(() {
        mad = value;
      });
    });
    _loadDataToTravelList().then((value) => print("" + value[0].toString()));
  }

  Future<List<dynamic>> _loadData() async {
    String jsonString =
        await rootBundle.loadString('assets/elektrikli/ea3maddeler.json');
    return json.decode(jsonString).toList();
  }

  Future<List<modelMadde>> _loadDataToTravelList() async {
    String jsonString =
        await rootBundle.loadString('assets/elektrikli/ea3maddeler.json');
    List<dynamic> jsonResponse = json.decode(jsonString).toList();
    return jsonResponse.map((v) => modelMadde.fromJson(v)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("81-1 A3")),
      ),
      body: (mad == null || mad.isEmpty)
          ? Center(child: LinearProgressIndicator())
          : ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    maddeCard(
                      renk: Colors.white70,
                      cardChild: ListTile(
                        title: Center(child: Text("${mad[index]["katkapilari"]}",style: TextStyle(fontSize: 25, color: Colors.black,))),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => son2()),
                          );
                        },
                      ),
                    ),maddeCard(
                      renk: Colors.white70,
                      cardChild: ListTile(
                        title: Center(child: Text("KUYU DİBİ",style: TextStyle(fontSize: 25, color: Colors.black,))),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => kuyudibi()),
                          );
                        },
                      ),
                    ),maddeCard(
                      renk: Colors.white70,
                      cardChild: ListTile(
                        title: Center(child: Text("KABİN ÜZERİ",style: TextStyle(fontSize: 25, color: Colors.black,))),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => kabinuzeri()),
                          );
                        },
                      ),
                    ),maddeCard(
                      renk: Colors.white70,
                      cardChild: ListTile(
                        title: Center(child: Text("KAT KAPILARI",style: TextStyle(fontSize: 25, color: Colors.black,))),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => kabinuzeri()),
                          );
                        },
                      ),
                    ),maddeCard(
                      renk: Colors.white70,
                      cardChild: ListTile(
                        title: Center(child: Text("KABİN İÇİ",style: TextStyle(fontSize: 25, color: Colors.black,))),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => kabinuzeri()),
                          );
                        },
                      ),
                    ),maddeCard(
                      renk: Colors.white70,
                      cardChild: ListTile(
                        title: Center(child: Text("DİĞER",style: TextStyle(fontSize: 25, color: Colors.black,))),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => kabinuzeri()),
                          );
                        },
                      ),
                    ),maddeCard(
                      renk: Colors.white70,
                      cardChild: ListTile(
                        title: Center(child: Text("MAKİNADAİRESİZ",style: TextStyle(fontSize: 25, color: Colors.black,))),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => kabinuzeri()),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
    );
  }
}

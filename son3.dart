import 'dart:convert';

import 'package:cklist_son/cklist/elektirikli/eMaddeler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modelMadde.dart';
import 'haltmaddeler.dart';

class sonuc extends StatefulWidget {

  dynamic mad;
  sonuc({this.mad,});
  @override
  aeAltMaddeler createState() => aeAltMaddeler();
}

class aeAltMaddeler extends State<sonuc> {
  List<dynamic> data;
  @override
  void initState() {}
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 80,
            pinned: true,
            primary: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/' + '${widget.mad["mresim"]}',
                  fit: BoxFit.cover),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("${widget.mad["malt_maddeler"][index]["altmadde"]}"),
                      ],
                    ),
                    subtitle: Text("${widget.mad["malt_maddeler"][index]["altmaddeno"]}",textAlign: TextAlign.right),
                  ),
                );
              },
              childCount: widget.mad["malt_maddeler"].length,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Colors.green,
                    thickness: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                          "MADDENİN YORUMU",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${widget.mad["açiklamasi"]}',
                      style:
                      TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Divider(
                    color: Colors.green,
                    thickness: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// kuyu dibi

class kuyudibialt extends StatefulWidget {

  dynamic mad;
  kuyudibialt({this.mad,});
  @override
  kmaddeler createState() => kmaddeler();
}

class kmaddeler extends State<kuyudibialt> {
  List<dynamic> data;
  @override
  void initState() {}
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 80,
            pinned: true,
            primary: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/' + '${widget.mad["kresim"]}',
                  fit: BoxFit.cover),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("${widget.mad["kalt_maddeler"][index]["altmadde"]}"),
                      ],
                    ),
                    subtitle: Text("${widget.mad["kalt_maddeler"][index]["altmaddeno"]}",textAlign: TextAlign.right),
                  ),
                );
              },
              childCount: widget.mad["kalt_maddeler"].length,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Colors.green,
                    thickness: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                          "MADDENİN YORUMU",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${widget.mad["açiklamasi"]}',
                      style:
                      TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Divider(
                    color: Colors.green,
                    thickness: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// kabin üzeri
class kzaltmadde extends StatefulWidget {
  dynamic mad;
  kzaltmadde({this.mad,});
  @override
  kzzmaddeler createState() => kzzmaddeler();
}
class kzzmaddeler extends State<kzaltmadde> {
  List<dynamic> data;
  @override
  void initState() {}
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 80,
            pinned: true,
            primary: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/' + '${widget.mad["kzresim"]}',
                  fit: BoxFit.cover),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("${widget.mad["kzalt_maddeler"][index]["altmadde"]}"),
                      ],
                    ),
                    subtitle: Text("${widget.mad["kzalt_maddeler"][index]["altmaddeno"]}",textAlign: TextAlign.right),
                  ),
                );
              },
              childCount: widget.mad["kzalt_maddeler"].length,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Colors.green,
                    thickness: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                          "MADDENİN YORUMU",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${widget.mad["açiklamasi"]}',
                      style:
                      TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Divider(
                    color: Colors.green,
                    thickness: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
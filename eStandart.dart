
import 'package:cklist_son/cklist/hidrolik/son1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../cardWidget.dart';
import 'eyrmBolge.dart';


class eStandart extends StatefulWidget {
  @override
  _eStandartState createState() => _eStandartState();
}

class _eStandartState extends State<eStandart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("ELEKTİRİKLİ",style: TextStyle(fontSize: 30, color: Colors.black,))),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          anaCard(
            cardChild: ListTile(
              title: Center(child: Text("TS EN 81-20",style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => yrmBolge()),
                );
              },
            ),
            renk: Colors.white,
          ),
          Divider(height: 30,),
          anaCard(
            cardChild: ListTile(
              title: Center(child: Text("TS EN 81-1 A3",style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sonbir()),
                );
              },
            ),
            renk: Colors.white,
          ),
        ],
      )
    );
  }
}

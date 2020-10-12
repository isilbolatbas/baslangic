import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:xml/xml.dart' as xml;
import 'package:baslangic/a.dart';

class xmlData extends StatefulWidget {

  @override
  _MainFetchDataState createState() => _MainFetchDataState();
}

class _MainFetchDataState extends State<xmlData> {
  var isLoading = false;
  String responseContent = "";
  List<Photo> itemList = List();

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    http.Client httpC = new http.Client();
    final url = Uri.parse('https://www.tcmb.gov.tr/kurlar/today.xml');
    httpC.get(url).then((value) {
      setState(() {
        responseContent = value.body.toString();
parsing();
        isLoading = false;
      });
    });
  }
  getValue(Iterable<xml.XmlElement>  items) {
    var textValue;
    items.map((xml.XmlElement node) {
      textValue = node.text;
    }).toList();
    return textValue;
  }

  parsing(){
    var document = xml.parse(responseContent);
    Iterable<xml.XmlElement> items = document.findAllElements('Currency');
    items.map((xml.XmlElement item) {
      var bar = getValue(item.findElements("CurrencyName"));
      var bar_desc = getValue(item.findElements("ForexBuying"));
      itemList.add(Photo(bar, bar_desc));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            color: const Color(0xFF6A1B9A),
            textColor: Colors.white,
            child: new Text("Bilinmeyen Json'u Gör"),
            onPressed: _fetchData,
          ),
        ),
        body: itemList.length > 0 ? ListView(
            children:  itemList.map((Photo item) {
              return ListTile(
          
                subtitle: Text(item.forexbuying),
                trailing: FlatButton(onPressed: (){}, child: Text('\$${item.currencyname}', style: TextStyle(fontSize: 12, color: Colors.red),)),
              );
            }).toList()) : Center(
          child: CircularProgressIndicator(),
        ),
    );
  }
}

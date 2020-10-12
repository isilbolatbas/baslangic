import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:baslangic/photo.dart';
import 'package:http/http.dart' as http;

class xmlData extends StatefulWidget {
  @override
  _MainFetchDataState createState() => _MainFetchDataState();
}

class _MainFetchDataState extends State<xmlData> {



  var isLoading = false;

  String responseContent = "";

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    http.Client httpC =new http.Client();
    final url = Uri.parse('https://www.tcmb.gov.tr/kurlar/today.xml');
    httpC.get(url).then((value){
      setState(() {
        responseContent=value.body.toString();
        isLoading = false;
      });
    });
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
        body: isLoading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
          //      itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(10.0),
                        //       title: new Text(list[index].title),
                        /*         trailing: new Image.network(
               list[index].thumbnailUrl,
                  fit: BoxFit.cover,
                  height: 40.0,
                  width: 40.0,

                ), */


                      ),
                      Text(responseContent),
                    ],
                  ),
                );
            }));
  }
}
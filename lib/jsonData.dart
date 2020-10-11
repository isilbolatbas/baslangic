import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:baslangic/photo.dart';
import 'package:http/http.dart' as http;

class doviz extends StatefulWidget {
  @override
  _MainFetchDataState createState() => _MainFetchDataState();
}

class _MainFetchDataState extends State<doviz> {
  List<Photo> list = List();
  var isLoading = false;

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response =
    await http.get("https://jsonplaceholder.typicode.com/photos");
    if (response.statusCode == 200) {
      list = (json.decode(response.body) as List)
          .map((data) => new Photo.fromJson(data))
          .toList();
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Fotoğraf Yüklenemedi');
    }
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
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: EdgeInsets.all(10.0),
                title: new Text(list[index].title),
                trailing: new Image.network(
                  list[index].thumbnailUrl,
                  fit: BoxFit.cover,
                  height: 40.0,
                  width: 40.0,
                ),
              );
            }));
  }
}
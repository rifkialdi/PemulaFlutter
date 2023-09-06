import 'package:flutter/material.dart';
import 'package:pemulaflutter/model/tourism._place.dart';

class DetailScreen extends StatelessWidget {

  final TourismPlaceList datanya;

  const DetailScreen({required this.datanya});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(datanya.nama),
      ),
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(datanya.foto),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              datanya.nama,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              datanya.description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    )));
  }
}

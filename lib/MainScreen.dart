import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pemulaflutter/DetailScreen.dart';
import 'package:pemulaflutter/model/tourism._place.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Badminton INA'),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final TourismPlaceList data = dataDummy[index];
              return InkWell(
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: Image.network(data.foto),
                          height: 100,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Center(
                            child: Text(
                              data.nama,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(datanya: data,);
                  }));
                },
              );
            },
            itemCount: dataDummy.length,
          ),
        )
    );
  }
}

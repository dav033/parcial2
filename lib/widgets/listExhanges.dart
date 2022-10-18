import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var prueba = [
  {"name": "AUD"}
];

List<Widget> listExchanges(data, number) {
  List<Widget> exchanges = [];

  var owo = data.getExchanges;

  for (var key in owo.keys) {
    exchanges.add(Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: 400,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              //                    <--- top side
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          children: [
            Text(
                "$key: ${number != "" ? (owo[key] * double.parse(number)).toString() : '0'}"),
          ],
        )));
  }

  return exchanges;
}

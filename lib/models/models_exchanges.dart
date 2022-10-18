import 'dart:convert';

class Exchange {
  var item;

  Exchange();

  Exchange.add(json) {
    if (json == null) return;

    final W = ExchangeModel.fromJsonMap(json);
    item = ExchangeModel.fromJsonMap(json);
    //print(W);
    //item = json;
    // print(W.exchanges['AUD']);
  }
}

class ExchangeModel {
  late String date = '';
  late String base;
  late Map exchanges;

  ExchangeModel(this.date, this.base, this.exchanges);

  ExchangeModel.fromJsonMap(json) {
    date = json["date"];
    base = json["base"];
    exchanges = json["rates"];
  }

  String get datee {
    return date;
  }
}

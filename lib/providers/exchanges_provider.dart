import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:parcial2/models/models_exchanges.dart';

class ExchangesProvider {
  final url = 'https://api.frankfurter.app/latest?from=USD';

  Future getExchanges() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      final exchanges = Exchange.add(jsonData);
      return exchanges.item;
    } else {
      throw Exception("Ocurrio Algo ${response.statusCode}");
    }
  }
}

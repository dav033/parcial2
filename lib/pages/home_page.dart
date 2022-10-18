import 'package:flutter/material.dart';
import 'package:parcial2/providers/exchanges_provider.dart';
import 'package:parcial2/models/models_exchanges.dart';
import 'package:parcial2/widgets/listExhanges.dart';

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomeApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomeApp> {
  var _data;

  String _number = '1';

  void changeNumber(text) {
    setState(() {
      _number = text;
    });
  }

  @override
  void initState() {
    super.initState();
    final getProvider = ExchangesProvider();

    _data = getProvider.getExchanges();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: _data,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data as ExchangeModel;
            return ListView(children: [
              TextFormField(
                  initialValue: '1',
                  onChanged: (text) {
                    changeNumber(text);
                  },
                  keyboardType: TextInputType.number),
              Text(
                  "El dolar hoy ${data.getDate} tiene el siguiente valor en estas monedas:"),
              Container(
                child: (Column(
                  children: listExchanges(data, _number),
                )),
              )
            ]);
          } else {
            return const Text('Hubo un Error');
          }
        },
      ),
    );
  }
}

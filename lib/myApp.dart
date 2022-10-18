import 'package:flutter/material.dart';

import 'package:parcial2/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'El Dolar Hoy',
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const MyHomeApp(title: 'El Dolar Hoy')
      },
    );
  }
}

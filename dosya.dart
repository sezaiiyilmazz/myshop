import 'package:flutter/material.dart';

void islem(String metin, int sayi) {
  for (int i = 0; i < sayi; i++) {
    print(metin);
  }
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image.asset Example'),
        ),
        body: Center(
          child: Image.asset('assets/fashion.png'),
        ),
      ),
    );
  }
}

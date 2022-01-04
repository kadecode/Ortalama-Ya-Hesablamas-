import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hesaplama_programi/text_sabitleri.dart';
import 'package:hesaplama_programi/user_data.dart';

import 'hesap_page.dart';

class EndPage extends StatelessWidget {
  final UserData _userData;
  const EndPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Sonuc Sayfası',
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 8,
              child: Center(
                child: Text(
                  Hesap(_userData).sonHesap().toString(),
                  style: textSabitler,
                ),
              )),
          Expanded(
            child: ButtonTheme(
              child: FlatButton(
                color: Colors.white,
                child: Text(
                  'GERi DÖN',
                  style: textSabitler,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

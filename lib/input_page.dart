import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hesaplama_programi/son_sayfa.dart';
import 'package:hesaplama_programi/text_sabitleri.dart';
import 'package:hesaplama_programi/user_data.dart';

import 'container_page.dart';
import 'icon_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? cinsiyet;
  @override
  void initState() {
    cinsiyet = null;
    super.initState();
  }

  double? cigaretCount = 0.0;
  double? weekSpor = 0.0;
  int boy = 160;
  int kilo = 50;
  String label1 = 'BOY';
  String label2 = 'KİLO';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
          backgroundColor: Colors.blueGrey[400],
          title: const Text(
            'Hayat Ortalaması Hesabı',
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      renk: Colors.white,
                      onBas: () {},
                      child: (buildRowOutLineButton(label1, boy)),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: (buildRowOutLineButton(label2, kilo)),
                      onBas: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                onBas: () {},
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Haftada Kaç Gün Spor Yapıyorsun?',
                        style: textSabitler,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('${weekSpor!.round()}', style: numberStyle),
                      Slider(
                        value: weekSpor!.floorToDouble(),
                        min: 0,
                        max: 7,
                        activeColor: Colors.blueGrey,
                        divisions: 7,
                        label: weekSpor!.round().toString(),
                        onChanged: (newWeek) =>
                            setState(() => weekSpor = newWeek),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: MyContainer(
                onBas: () {},
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Günde Kaç Sigara İçiyorsunuz?',
                        style: textSabitler,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('${cigaretCount!.round()}', style: numberStyle),
                      Slider(
                        value: cigaretCount!.floorToDouble(),
                        min: 0,
                        max: 30,
                        activeColor: Colors.blueGrey,
                        divisions: 30,
                        label: cigaretCount!.round().toString(),
                        onChanged: (newCount) =>
                            setState(() => cigaretCount = newCount),
                      ),
                    ]),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                        onBas: () {
                          setState(() {
                            cinsiyet = 'KADIN';
                          });
                        },
                        renk:
                            cinsiyet == 'KADIN' ? Colors.white60 : Colors.white,
                        child: const IconCins(
                          icon: FontAwesomeIcons.venus,
                          cinsiyet: 'KADIN',
                        )),
                  ),
                  Expanded(
                    child: MyContainer(
                        onBas: () {
                          setState(() {
                            cinsiyet = 'ERKEK';
                          });
                        },
                        renk:
                            cinsiyet == 'ERKEK' ? Colors.white60 : Colors.white,
                        child: const IconCins(
                          icon: FontAwesomeIcons.mars,
                          cinsiyet: 'ERKEK',
                        )),
                  ),
                ],
              ),
            ),
            ButtonTheme(
              height: 45,
              child: FlatButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EndPage(UserData(
                                  boy: boy,
                                  kilo: kilo,
                                  weekSpor: weekSpor,
                                  cigaretCount: cigaretCount,
                                  cinsiyet: cinsiyet,
                                ))));
                  },
                  child: Text(
                    'HESAPLA',
                    style: textSabitler,
                  )),
            ),
          ],
        ));
  }

  Row buildRowOutLineButton(String label, int girdi) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RotatedBox(
            quarterTurns: -1,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: textSabitler,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          RotatedBox(
            quarterTurns: -1,
            child: Text(
              girdi.toString(),
              textAlign: TextAlign.center,
              style: numberStyle,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonTheme(
                minWidth: 36,
                child: OutlineButton(
                  onPressed: () {
                    setState(
                      () {
                        if (girdi == boy) {
                          boy++;
                        } else {
                          kilo++;
                        }
                      },
                    );
                  },
                  borderSide: const BorderSide(
                    width: 1.4,
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    size: 15,
                    color: Colors.blue,
                  ),
                ),
              ),
              ButtonTheme(
                minWidth: 36,
                child: OutlineButton(
                  onPressed: () {
                    setState(() {
                      if (girdi == boy) {
                        boy--;
                      } else {
                        kilo--;
                      }
                    });
                  },
                  borderSide: const BorderSide(
                    width: 1.4,
                    color: Colors.grey,
                  ),
                  child: const Icon(
                    FontAwesomeIcons.minus,
                    size: 15,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ]);
  }
}

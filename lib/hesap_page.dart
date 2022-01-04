import 'package:hesaplama_programi/user_data.dart';

class Hesap {
  UserData _userData;
  Hesap(this._userData);

  int sonHesap() {
    var ortalamaYas = 70;
    var sonuc;
    var boyOran;
    var boy = _userData.boy;
    var kilo = _userData.kilo;
    var sigara = _userData.cigaretCount;
    var spor = _userData.weekSpor;
    _userData.cinsiyet == 'KADIN' ? ortalamaYas + 5 : ortalamaYas + 2;
    boyOran = (boy! / kilo!) + ortalamaYas;
    ortalamaYas - sigara!;
    ortalamaYas + spor!;
    sonuc = ortalamaYas;
    return sonuc;
  }
}

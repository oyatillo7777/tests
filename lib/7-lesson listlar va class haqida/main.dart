import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //odiy list
  final List ismlar = [
    "Alisher",
    "Sobir",
    "Sobir",
    "Sobir",
  ];
  for (int i = 0; i < ismlar.length; i++) {
    print(ismlar[i]);
  }
  ismlar.forEach((element) {
    print(element);
  });

  //set list

  final ismlarSet = {
    "Alisher",
    "Sobir",
    "Sobir",
    "Sobir",
  };
  for (int i = 0; i < ismlarSet.length; i++) {
    print(ismlarSet.elementAt(i));
  }

  //map list
  final ismlarMap = {"ism": "Oyatillo", "familya": "Mirzolimov"};
  print(ismlarMap['ism']);
  print(ismlarMap['familya']);

  qoshish(13, 32);
  print(ayrish(13, 3));
}

void qoshish(int a, int b) {
  int natija = a + b;
  print(natija);
}

int ayrish(int a, int b) {
  int natija = a - b;
  return natija;
}

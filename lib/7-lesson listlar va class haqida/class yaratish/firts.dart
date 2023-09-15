void main() {
  Odam odam =
      Odam(ism: "Oyatillo", fam: "Mirzolimov", yil: 2020, addres: "Qoshtepa");
  Odam odam1 =
      Odam(ism: "Oyatillo", fam: "Mirzolimov", yil: 2020, addres: "Qoshtepa");

  if (odam == odam1) {
    print("true");
  } else {
    print("false");
  }
  print(odam.ism);
  print(odam.fam);
  print(odam.yil);
  print(odam.addres);
  print(odam.hisobla());
}

class Odam {
  String ism;
  String fam;
  int yil;
  String? addres;

  Odam(
      {required this.ism,
      required this.fam,
      required this.yil,
      required this.addres});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Odam &&
          runtimeType == other.runtimeType &&
          ism == other.ism &&
          fam == other.fam &&
          yil == other.yil &&
          addres == other.addres;

  @override
  int get hashCode =>
      ism.hashCode ^ fam.hashCode ^ yil.hashCode ^ addres.hashCode;

  @override
  String toString() {
    return 'ism: $ism, fam: $fam, yil: $yil, addres: $addres';
  }

  int hisobla() {
    int natija = 2023 - yil;
    return natija;
  }
}

import 'package:hive_flutter/adapters.dart';

part 'contact.g.dart';

@HiveType(typeId: 1)
class Contact {
  @HiveField(1)
  String ism;
  @HiveField(2)
  String fam;
  @HiveField(3)
  String nom;

  Contact(this.ism, this.fam, this.nom);
}

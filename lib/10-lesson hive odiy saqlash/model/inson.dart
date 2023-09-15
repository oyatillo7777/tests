import 'package:hive_flutter/adapters.dart';

part 'inson.g.dart';

@HiveType(typeId: 0)
class Inson {
  @HiveField(1)
  String ism;
  @HiveField(2)
  String fam;
  @HiveField(3)
  int yoshi;

  Inson(this.ism, this.fam, this.yoshi);
}

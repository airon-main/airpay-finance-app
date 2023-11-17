import 'package:hive/hive.dart';

part 'cards.g.dart';

@HiveType(typeId: 1)
class Card {
  Card({
    required this.name,
    required this.nominal,
  });
  @HiveField(0)
  String name;

  @HiveField(1)
  String nominal;
}

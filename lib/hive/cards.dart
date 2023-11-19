import 'package:hive/hive.dart';

part 'cards.g.dart';

@HiveType(typeId: 1)
class Card {
  Card({
    required this.name,
    required this.nominal,
    required this.image,
  });
  @HiveField(0)
  String name;

  @HiveField(1)
  String nominal;

  @HiveField(2)
  String image;
}

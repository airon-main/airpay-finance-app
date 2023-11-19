import 'package:hive/hive.dart';

part 'cards.g.dart';

@HiveType(typeId: 1)
class MyCard {
  MyCard({
    required this.name,
    required this.nominal,
    required this.image,
    required this.mainColor,
    required this.contrastMainColor,
  });
  @HiveField(0)
  String name;

  @HiveField(1)
  double nominal;

  @HiveField(2)
  String image;

  @HiveField(3)
  String mainColor;

  @HiveField(4)
  String contrastMainColor;
}

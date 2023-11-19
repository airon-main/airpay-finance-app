import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class User {
  User({
    required this.username,
    required this.email,
    required this.password,
    required this.pin,
    required this.image,
    required this.airpayId,
  });
  @HiveField(0)
  String username;

  @HiveField(1)
  String email;

  @HiveField(2)
  String password;

  @HiveField(3)
  String pin;

  @HiveField(4)
  String image;

  @HiveField(5)
  String airpayId;
}

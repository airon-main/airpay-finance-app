import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 1)
class Transaction {
  Transaction({
    required this.username,
    required this.password,
    required this.nominal,
  });
  @HiveField(0)
  String username;

  @HiveField(1)
  String password;

  @HiveField(2)
  int nominal;
}
